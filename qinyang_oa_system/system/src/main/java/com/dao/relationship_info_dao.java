package com.dao;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.relationship_info;


//用户关系数据库连接池
public class relationship_info_dao 

{
	private SqlSessionFactory sqlSessionFactory=null;

	//构造函数，初始化数据库连接器
	public relationship_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public boolean insert(relationship_info _relationship_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("relationship_info.insert", _relationship_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_relationship_info+") --> "+_relationship_info.get_relationship_id());
	        
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
