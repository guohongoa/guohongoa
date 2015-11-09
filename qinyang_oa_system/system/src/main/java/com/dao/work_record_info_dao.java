package com.dao;

import java.util.List;

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
	

	//根据用户id查询台账信息
	 public List<work_record_info> select_by_work_record_creatorid(int work_record_creatorid)
	 {
		 List<work_record_info> work_record_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 work_record_info_list = session.selectList("work_record_info.select_by_work_record_creatorid",work_record_creatorid);
	        } finally {
	            session.close();
	        }
	        System.out.println("select_by_work_record_creatorid() --> "+work_record_info_list);
	        return work_record_info_list;
	 }
	 
	 
	 public work_record_info select_by_work_record_id(int work_record_id)
	 {
		 work_record_info _work_record_info=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 _work_record_info= session.selectOne("work_record_info.select_by_work_record_id",work_record_id);
		     }finally{
	            session.close();
	        }
	        System.out.println("select_by_work_record_id --> "+_work_record_info.get_work_record_id());
	        return _work_record_info;
	 }
}
