package com.dbconnector;

import java.util.ArrayList;
import java.util.List;

import com.dao.contact_person_department_info_dao;
import com.dao.contact_person_info_dao;
import com.dao.employee_info_dao;
import com.dao.relationship_info_dao;
import com.data.contact_person_department_info;
import com.data.contact_person_info;
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
	
	public static List<List<contact_person_info>> get_contact_list_by_department()
	{
		contact_person_info_dao _contact_person_info_dao=new contact_person_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		contact_person_department_info_dao _contact_person_department_info_dao=new contact_person_department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		 List<List<contact_person_info>> person_list=new ArrayList<List<contact_person_info>>();
		 
		 List<contact_person_department_info> contact_person_department_list=_contact_person_department_info_dao.select_all();
		 
		 for(contact_person_department_info _department_info:contact_person_department_list)
		 {
			 System.out.println(_department_info.get_contact_person_department_name());
			 int contact_person_department_id=_department_info.get_contact_person_department_id();
			 List<contact_person_info> person_info_list=_contact_person_info_dao.get_contact_person_info_list_by_department_id(contact_person_department_id);
			 person_list.add(person_info_list);
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
	


}
