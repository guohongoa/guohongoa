package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.department_info;
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
	 
	 public List<work_waiting_info> get_all_by_work_receiver_id(int work_receiver_id)
	 {
		 List<work_waiting_info> work_waiting_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 work_waiting_list = session.selectList("work_waiting_info.select_by_receiver_id",work_receiver_id);
	        } finally {
	            session.close();
	        }
	        System.out.println("selectAll() --> "+work_waiting_list);
	        return work_waiting_list;
	 }
}
