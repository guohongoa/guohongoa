package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.contact_info;
import com.data.department_info;

public class contact_info_dao 
{
private SqlSessionFactory sqlSessionFactory=null;
	
	public contact_info_dao (SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	
	public boolean insert(contact_info _contact_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("contact_info.insert", _contact_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_contact_info+") --> "+_contact_info.get_contact_id());
	        
	        if(id==-1)
	        {
	        	return false;//插入失败
	        }
	        else
	        {
	        	return true;//插入成功
	        }
	  }
	
	//查询下级直接联系人
	public List<contact_info> get_direct_contact_list_by_id(contact_info _contact_info)
	{
		 List<contact_info> contact_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 contact_info_list = session.selectList("contact_info.select_direct_by_id",_contact_info);
	        } finally {
	            session.close();
	        }
	        System.out.println("selectAll() --> "+contact_info_list);
	        return contact_info_list;
	}
	
	public List<contact_info> select_contact_by_id(int owner_id)
	{
		 List<contact_info> contact_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 contact_info_list = session.selectList("contact_info.select_contact_by_id",owner_id);
	        } finally {
	            session.close();
	        }
	        System.out.println("selectAll() --> "+contact_info_list);
	        return contact_info_list;
	}
}
