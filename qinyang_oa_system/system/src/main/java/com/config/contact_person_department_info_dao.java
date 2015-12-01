package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.contact_node;
import com.data.contact_person_department_info;
import com.data.department_info;
import com.data.employee_info;

//四联联络人员机构表数据库联络类
public class contact_person_department_info_dao 
{
	private SqlSessionFactory sqlSessionFactory=null;

	//构造函数，初始化数据库连接器
	public contact_person_department_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public boolean insert(contact_person_department_info _contact_person_department_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("contact_person_department_info.insert", _contact_person_department_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_contact_person_department_info+") --> "+_contact_person_department_info.get_contact_person_department_id());
	        
	        if(id==-1)
	        {
	        	return false;//插入失败
	        }
	        else
	        {
	        	return true;//插入成功
	        }
	  }
	 public List<contact_person_department_info> select_all()
	 {
		 List<contact_person_department_info> contact_person_department_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 contact_person_department_info_list = session.selectList("contact_person_department_info.select_all");
	        } finally {
	            session.close();
	        }
	        System.out.println("selectAll() --> "+contact_person_department_info_list);
	        return contact_person_department_info_list;
	 }
	 
	 public boolean update(contact_person_department_info _contact_person_department_info)
	 {
		 int id = -1;
	      SqlSession session = sqlSessionFactory.openSession();
	 
	      try {
	          id = session.update("contact_person_department_info.update",_contact_person_department_info);
	 
	      } finally {
	          session.commit();
	          session.close();
	      }
	      System.out.println("update("+_contact_person_department_info+") --> updated");
	      
	      if(id==-1)
	        {
	        	return false;//修改失败
	        }
	        else
	        {
	        	return true;//修改成功
	        }
	 }
	 
	 public contact_node get_contact_node_by_id(int contact_person_department_id,int employee_id,String node_code)
	 {
		   contact_person_department_info _contact_person_department_info = null;
	        SqlSession session1 = sqlSessionFactory.openSession();
	        try {
	        	_contact_person_department_info = session1.selectOne("contact_person_department_info.select_by_department_id", contact_person_department_id);
	 
	        } finally {
	            session1.close();
	        }
	        System.out.println("selectById("+contact_person_department_id+") --> "+_contact_person_department_info);
	        
	        employee_info _employee_info = null;
	        SqlSession session2 = sqlSessionFactory.openSession();
	        try {
	            _employee_info = session2.selectOne("employee_info.select_by_employee_id", employee_id);
	 
	        } finally {
	            session2.close();
	        }
	        System.out.println("selectByUserid("+employee_id+") --> "+_employee_info);
	        
	        contact_node _contact_node=new contact_node();
			_contact_node.set_contact_node_code(node_code);//结点编号
			_contact_node.set_contact_person_department_id(_contact_person_department_info.get_contact_person_department_id());//部门id
			_contact_node.set_contact_person_department_name(_contact_person_department_info.get_contact_person_department_name());//部门名称
			_contact_node.set_contact_person_department_type(_contact_person_department_info.get_contact_person_department_type());//部门类型，决定显示红蓝
            _contact_node.set_contact_node_level(node_code.length()-5);//字符串长度决定层级
            _contact_node.set_contact_person_name(_employee_info.get_employee_name());
            _contact_node.set_contact_person_id(_employee_info.get_employee_id());
            
            return _contact_node;
	 }
	 
	 
	 public contact_person_department_info get_department_info_by_id(int contact_person_department_id)
	 {
		 contact_person_department_info _department_info = null;
	        SqlSession session = sqlSessionFactory.openSession();
	        try {
	            _department_info = session.selectOne("contact_person_department_info.select_by_department_id", contact_person_department_id);
	 
	        } finally {
	            session.close();
	        }
	        System.out.println("selectByUserid("+contact_person_department_id+") --> "+_department_info);
	        return _department_info;
	 }
	

}
