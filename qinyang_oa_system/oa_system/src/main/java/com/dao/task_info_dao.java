package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.mail_info;
import com.data.task_info;


public class task_info_dao 
{
	private SqlSessionFactory sqlSessionFactory=null;  //数据库链接器
	
	public task_info_dao(SqlSessionFactory sqlSessionFactory) 
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
		
		public boolean insert(task_info _task_info)
		{
		       int id = -1;
		        SqlSession session = this.sqlSessionFactory.openSession();
		 
		        try {
		            id = session.insert("task_info.insert", _task_info);
		        } finally {
		            session.commit();
		            session.close();
		        }
		        System.out.println("insert("+_task_info+") --> "+_task_info.get_task_id());
		        
		        if(id==-1)
		        {
		        	return false;//插入失败
		        }
		        else
		        {
		        	return true;//插入成功
		        }
		 }
		
		 public List<task_info> select_all()
		 {
			 List<task_info> task_info_list=null;
			 SqlSession session=this.sqlSessionFactory.openSession();
			 try {
		            task_info_list = session.selectList("task_info.select_all");
		        } finally {
		            session.close();
		        }
		        System.out.println("selectAll() --> "+task_info_list);
		        return task_info_list;
		 }
	}
	
