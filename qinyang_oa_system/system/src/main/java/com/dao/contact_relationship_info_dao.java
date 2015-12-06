package com.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.contact_person_info;
import com.data.contact_relationship_info;

//四联用户关系表链接器
public class contact_relationship_info_dao
{
	private SqlSessionFactory sqlSessionFactory=null;

	public contact_relationship_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public boolean insert(contact_relationship_info _contact_relationship_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("contact_relationship_info.insert", _contact_relationship_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_contact_relationship_info+") --> "+_contact_relationship_info);
	        
	        if(id==-1)
	        {
	        	return false;//插入失败
	        }
	        else
	        {
	        	return true;//插入成功
	        }
	  }
}
