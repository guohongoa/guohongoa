package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.contact_add_request_info;
import com.data.contact_person_department_info;
import com.data.department_info;

public class contact_add_request_info_dao 
{
	private SqlSessionFactory sqlSessionFactory=null;
	
	public contact_add_request_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public boolean insert(contact_add_request_info _contact_add_request_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("contact_add_request_info.insert", _contact_add_request_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_contact_add_request_info+") --> "+_contact_add_request_info.get_contact_add_msg_id());
	        
	        if(id==-1)
	        {
	        	return false;//插入失败
	        }
	        else
	        {
	        	return true;//插入成功
	        }
	  }
	 
	 
	 public List<contact_add_request_info> get_list_by_receiver_id(int contact_request_receiver_id)
	 {
		 List<contact_add_request_info> contact_add_request_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 contact_add_request_info_list = session.selectList("contact_add_request_info.select_by_receiver_id",contact_request_receiver_id);
	        } finally {
	            session.close();
	        }
	        System.out.println("select_by_receiver_id() --> "+contact_add_request_info_list);
	        return contact_add_request_info_list;
	 }
	 
	 public contact_add_request_info get_info_by_id(int contact_add_msg_id)
	 {
		 contact_add_request_info _contact_add_request_info = null;
	        SqlSession session = sqlSessionFactory.openSession();
	        try {
	            _contact_add_request_info = session.selectOne("contact_add_request_info.select_by_id", contact_add_msg_id);
	 
	        } finally {
	            session.close();
	        }
	        System.out.println("selectByUserid("+contact_add_msg_id+") --> "+_contact_add_request_info);
	        return _contact_add_request_info;
	 }
	 
	 public boolean update_msg_status(contact_add_request_info _contact_add_request_info)
	  {
		  int id = -1;
	      SqlSession session = sqlSessionFactory.openSession();
	 
	      try {
	          id = session.update("contact_add_request_info.update_status",_contact_add_request_info);
	 
	      } finally {
	          session.commit();
	          session.close();
	      }
	      System.out.println("update(msg_status) --> updated");
	      
	      if(id==-1)
	        {
	        	return false;//修改失败
	        }
	        else
	        {
	        	return true;//修改成功
	        }
	  }
}
