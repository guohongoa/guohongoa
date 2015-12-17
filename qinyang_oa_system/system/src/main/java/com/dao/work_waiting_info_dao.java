package com.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.work_waiting_info;

public class work_waiting_info_dao 
{
    private SqlSessionFactory sqlSessionFactory=null;  //数据库链接器
	
	
	public work_waiting_info_dao (SqlSessionFactory sqlSessionFactory) 
	{
		this.sqlSessionFactory=sqlSessionFactory;
	} 
	
	 public boolean insert(work_waiting_info _work_waiting_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("work_waiting_info.insert", _work_waiting_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_work_waiting_info+") --> "+_work_waiting_info.get_waiting_id());
	        
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
