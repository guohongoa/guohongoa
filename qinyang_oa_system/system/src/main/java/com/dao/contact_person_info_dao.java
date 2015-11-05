package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.contact_person_info;

//四联人员信息表，数据库联络class

public class contact_person_info_dao 
{
	private SqlSessionFactory sqlSessionFactory=null;

	//构造函数，初始化数据库连接器
	public contact_person_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public boolean insert(contact_person_info _contact_person_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("contact_person_info.insert", _contact_person_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_contact_person_info+") --> "+_contact_person_info.get_contact_person_id());
	        
	        if(id==-1)
	        {
	        	return false;//插入失败
	        }
	        else
	        {
	        	return true;//插入成功
	        }
	  }
	 
	
	 
	 public List<contact_person_info> get_contact_person_info_list_by_department_id (int contact_person_department_id)
		{
			 List<contact_person_info> contact_person_info_list=null;
			 SqlSession session=this.sqlSessionFactory.openSession();
			 try {
				 contact_person_info_list = session.selectList("contact_person_info.select_by_contact_person_department_id",contact_person_department_id);
		        } finally {
		            session.close();
		        }
		        System.out.println("select_by_department()--> "+contact_person_info_list);
		        return contact_person_info_list;
		}
}
