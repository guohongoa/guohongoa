package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.contact_person_department_info;
import com.data.department_info;

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
	 
	 public contact_person_department_info get_contact_person_department_info_by_id(int contact_person_department_id)
	 {
		 contact_person_department_info _contact_person_department_info = null;
	        SqlSession session = sqlSessionFactory.openSession();
	        try {
	        	_contact_person_department_info = session.selectOne("contact_person_department_info.selectById", contact_person_department_id);
	 
	        } finally {
	            session.close();
	        }
	        System.out.println("selectById("+contact_person_department_id+") --> "+_contact_person_department_info);
	        return _contact_person_department_info;
	 }

}
