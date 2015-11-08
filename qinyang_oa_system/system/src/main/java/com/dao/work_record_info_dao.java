package com.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.service_info;
import com.data.work_record_info;

public class work_record_info_dao 
{
	
	private SqlSessionFactory sqlSessionFactory=null;  //数据库链接器
	
	
	public work_record_info_dao (SqlSessionFactory sqlSessionFactory) 
	{
		this.sqlSessionFactory=sqlSessionFactory;
	} 
	
	public boolean insert(work_record_info _work_record_info)
	{
	       int id = -1;
	        SqlSession session = this.sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("work_record_info.insert", _work_record_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_work_record_info+") --> "+_work_record_info.get_work_record_id());
	        
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
