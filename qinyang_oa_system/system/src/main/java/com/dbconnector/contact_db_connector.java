package com.dbconnector;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.dao.contact_add_request_info_dao;
import com.dao.contact_person_department_info_dao;
import com.dao.contact_person_info_dao;
import com.dao.contact_relationship_info_dao;
import com.dao.department_info_dao;
import com.dao.employee_info_dao;
import com.dao.relationship_info_dao;
import com.data.contact_add_request_info;
import com.data.contact_node;
import com.data.contact_person_department_info;
import com.data.contact_person_info;
import com.data.contact_relationship_info;
import com.data.employee_info;
import com.data.relationship_info;
import com.mybatis.mybatis_connection_factory;

public class contact_db_connector 
{

	
	public static boolean relationship_insert_db(relationship_info _relationship_info)  
	{
		relationship_info_dao _relationship_info_dao=new relationship_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		boolean rs=_relationship_info_dao.insert(_relationship_info);
		return rs;
	}
	
	
	
//四联人员或组织信息表数据库功能函数
	
	//人员插入数据库
	public static boolean contact_person_insert_db(contact_person_info _contact_person_info)  
	{
		contact_person_info_dao _contact_person_info_dao=new contact_person_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		boolean rs=_contact_person_info_dao.insert(_contact_person_info);
		return rs;
	}

   //组织插入数据库
	public static boolean contact_person_department_insert_db(contact_person_department_info _contact_person_department_info)
	{
		contact_person_department_info_dao _contact_person_department_info_dao=new contact_person_department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		boolean rs=_contact_person_department_info_dao.insert(_contact_person_department_info);
		return rs;
	}
	
	//根据组织机构分组，查询全部四联人员信息
	
	public static List<List<employee_info>> get_contact_list_by_department()
	{
		employee_info_dao _employee_info_dao=new employee_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		contact_person_department_info_dao _contact_person_department_info_dao=new contact_person_department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		 List<List<employee_info>> person_list=new ArrayList<List<employee_info>>();
		 
		 List<contact_person_department_info> contact_person_department_list=_contact_person_department_info_dao.select_all();
		 
		 for(contact_person_department_info _department_info:contact_person_department_list)
		 {
			 System.out.println(_department_info.get_contact_person_department_name());
			 int contact_person_department_id=_department_info.get_contact_person_department_id();
			 List<employee_info> employee_info_list=_employee_info_dao.get_employee_info_list_by_department_id(contact_person_department_id);
			 person_list.add(employee_info_list);
		 }
		 
		 return person_list;
	}
	
	//获取四联部门列表
	public static List<contact_person_department_info> get_contact_person_department_info()
	   {
		   List<contact_person_department_info> contact_person_department_info_list;
		   contact_person_department_info_dao _contact_person_department_info_dao=new contact_person_department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		   contact_person_department_info_list=_contact_person_department_info_dao.select_all();
		   return contact_person_department_info_list;
		   
	   }
	
	//添加下属部门
	public static boolean contact_person_department_add_son(contact_person_department_info _contact_person_department_info)
	{
		contact_person_department_info_dao _contact_person_department_info_dao=new contact_person_department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		boolean rs=_contact_person_department_info_dao.update(_contact_person_department_info);
		return rs;
		
	}
	
	
	
	//根据输入跟结点id，返回联络结点树xml字符串
	public static Map<String, contact_node> get_contact_map(int contact_person_department_id,int employee_id)
	{
		contact_person_department_info_dao _contact_person_department_info_dao=new contact_person_department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		//联络结点树map
		String node_code="node"; //结点键值，根结点为node1，一级第一个结点为node11，一级第二个结点为node12，二级一级第一个结点的子结点为node111，第二个为node112依次类推
		Map<String, contact_node> contact_map=new HashMap<String, contact_node>();//key为结点序数，value为部门对象
		
		int root_id=contact_person_department_id;
		node_code=node_code+1;//首先设置根结点为1
		contact_node root_node_info=_contact_person_department_info_dao.get_contact_node_by_id(root_id,employee_id,node_code);
	    contact_map.put(node_code, root_node_info);
	    
		//递归获得所有结点map
	   	contact_map=get_son_contact_map(contact_map, root_node_info, node_code);	 
		
		return contact_map;
	}
	
	
	private static Map<String, contact_node> get_son_contact_map( Map<String, contact_node> current_contact_map,contact_node parent_node,String parent_node_code)
	{
		contact_person_department_info_dao _contact_person_department_info_dao=new contact_person_department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		employee_info_dao                  _employee_info_dao                 =new employee_info_dao(mybatis_connection_factory.getSqlSessionFactory()); 
		contact_relationship_info_dao      _contact_relationship_info_dao     =new contact_relationship_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		int a=parent_node.get_contact_person_department_id();
		contact_person_department_info _contact_person_department_info=_contact_person_department_info_dao.get_department_info_by_id(parent_node.get_contact_person_department_id());
		
		int node1_id=  _contact_person_department_info.get_contact_person_department_sononeid();
	    int node2_id=  _contact_person_department_info.get_contact_person_department_sontwoid();
	    int node3_id=  _contact_person_department_info.get_contact_person_department_sonthreeid();
	    int node4_id=  _contact_person_department_info.get_contact_person_department_sonfourid();
	    
	    List<Integer> node_son_id_list=new ArrayList<Integer>();
	    node_son_id_list.add(new Integer(node1_id));
	    node_son_id_list.add(new Integer(node2_id));
	    node_son_id_list.add(new Integer(node3_id));
	    node_son_id_list.add(new Integer(node4_id));
	    
	    int n=0;//循环次数
	    for(Integer node_son_id_wrapper:node_son_id_list)
	    {
	    
	    System.out.println(n);
	    int node_son_id=node_son_id_wrapper.intValue();
	    if(node_son_id!=0)
	    {
	    	
	    	
	    	
	    	int son_employee_id;
	    	//employee_info _employee_info=_employee_info_dao.get_employee_info_by_parent_id_and_department_id(parent_node.get_contact_person_id(),node_son_id);
	    	//根据父级结点id，得到所有的子结点id
	    	List<contact_relationship_info> relationship_list=_contact_relationship_info_dao.get_son_relationship_list_by_parent_id(parent_node.get_contact_person_id(), node_son_id);
	    	
	    	for(contact_relationship_info _contact_relationship_info:relationship_list)
	    	{
	    	if(_contact_relationship_info!=null)
	    	{
	    		n++;
	    		String son_node_code=parent_node_code+n;
	        son_employee_id=_contact_relationship_info.get_contact_friend_id();//获取子结点id
	        System.out.println("test test test"+ son_employee_id);
	    	contact_node node_son_info=_contact_person_department_info_dao.get_contact_node_by_id(node_son_id, son_employee_id, son_node_code);
            current_contact_map.put(son_node_code,node_son_info);
	    	
	    	current_contact_map=get_son_contact_map(current_contact_map, node_son_info, son_node_code);
	    	}
	    	}
	    }
	    }
	    
		
		return current_contact_map;
	}
	
	 //使用用户手机号，查找用户信息
	 public static employee_info get_employee_info_by_phone(String employee_phone)
	 {
		 employee_info_dao _employee_info_dao=new employee_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		 employee_info _employee_info=_employee_info_dao.select_by_user_phone(employee_phone);
	     return _employee_info;
	 }

	 public static int get_contact_relationship_by_id(int owner_employee_id,int friend_employee_id)
	 {
		 int contact_relationship_type;
		 employee_info_dao _employee_info_dao=new employee_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		 contact_person_department_info_dao _contact_person_department_info_dao=new contact_person_department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		 
		 //获取主客用户信息
		 employee_info owner_department_employee_info=_employee_info_dao.select_by_employee_id(owner_employee_id);
		 employee_info friend_department_employee_info=_employee_info_dao.select_by_employee_id(friend_employee_id);
		 
		 
		 if(friend_department_employee_info!=null)
		 {
		 //获取主客部门id
		 int owner_department_id=owner_department_employee_info.get_employee_department_id();
		 int friend_department_id=friend_department_employee_info.get_employee_department_id();
		 
		 contact_person_department_info owner_contact_person_depepartment_info=_contact_person_department_info_dao.get_department_info_by_id(owner_department_id);
		 contact_person_department_info friend_contact_person_depepartment_info=_contact_person_department_info_dao.get_department_info_by_id(friend_department_id);
		 boolean is_downer=check_relationship_type(owner_contact_person_depepartment_info, friend_department_id); //是其下级与否
		 boolean is_upper=check_relationship_type(friend_contact_person_depepartment_info, owner_department_id);  //是其上级与否
		 
		 if(is_upper==true)
		 {
			 contact_relationship_type=0;//直接上级为0
		 }
		 else if(is_downer==true)
		 {
			 contact_relationship_type=1;//直接下级为1
		 }
		 else
		 {
			 contact_relationship_type=2;//无直接关系为2
		 }
		 }
		 else
		 {
			 //查不到说明手机号输入错误
			 contact_relationship_type=2;
		 }
		 
		 return contact_relationship_type;
		 
	 }
	 
	 private static boolean check_relationship_type(contact_person_department_info owner_department_info,int friend_department_id )
	 {
		 boolean is_son;//是否是其子部门,连查数据库四个选项
		 if(friend_department_id==owner_department_info.get_contact_person_department_sononeid())
		 {
			 is_son=true;
		 }
		 else if(friend_department_id==owner_department_info.get_contact_person_department_sontwoid())
		 {
			 is_son=true;
		 }
		 else if(friend_department_id==owner_department_info.get_contact_person_department_sonthreeid())
		 {
			 is_son=true;
		 }
		 else if(friend_department_id==owner_department_info.get_contact_person_department_sonfourid())
		 {
			 is_son=true;
		 }
		 else
		 {
			 is_son=false;
		 }
		 	 
		 return is_son;
	 }
	 
	 //添加四联用户关系
	 public static boolean insert_contact_relationship(contact_relationship_info _contact_relationship_info)
	 {
		    contact_relationship_info_dao _contact_relationship_ino_dao=new contact_relationship_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			
			boolean rs=_contact_relationship_ino_dao.insert(_contact_relationship_info);//插入是否成功
			
			return rs; 
	 }
	 
	 public static boolean insert_confirm_request_form(contact_add_request_info _contact_add_request_info)
	 {
		 contact_add_request_info_dao _contact_add_request_info_dao=new contact_add_request_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		 boolean rs=_contact_add_request_info_dao.insert(_contact_add_request_info);  //插入是否成功
		 return rs;
	 }

}
