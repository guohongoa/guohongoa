package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.department_info;
import com.data.work_contact_info;
import com.data.work_info;

public class work_info_dao 
{
private SqlSessionFactory sqlSessionFactory=null;  //数据库链接器
	
	//构造函数，初始化数据库连接器
	public work_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public boolean insert(work_info _work_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("work_info.insert", _work_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_work_info+") --> "+_work_info.get_work_id());
	        
	        if(id==-1)
	        {
	        	return false;//插入失败
	        }
	        else
	        {
	        	return true;//插入成功
	        }
	  }
	 
	
	 
	 public List<work_info>  get_by_work_sender_id(int sender_id)
	 {
		 List<work_info> work_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
	            work_info_list = session.selectList("work_info.select_by_sender_id",sender_id);
	        } finally {
	            session.close();
	        }
	        //System.out.println("selectAll() --> "+department_info_list);
	        return work_info_list;
	 }
}
