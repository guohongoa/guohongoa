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
	
	 public int insert(work_info _work_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("work_info.insert", _work_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	       id=_work_info.get_work_id();
	       return id;
	        
	       
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
	 
	 public List<work_info> get_work_info_by_receiver_id_and_type(work_info _work_info)
	 {
		 List<work_info> work_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
	            work_info_list = session.selectList("work_info.select_by_receiver_id_and_type",_work_info);
	        } finally {
	            session.close();
	        }
	        //System.out.println("selectAll() --> "+department_info_list);
	        return work_info_list;
	 }
	 
	 
	 public List<work_info>  get_work_info_by_sender_id_and_type(work_info _work_info)
	 {
		 List<work_info> work_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
	            work_info_list = session.selectList("work_info.select_by_sender_id_and_type",_work_info);
	        } finally {
	            session.close();
	        }
	        //System.out.println("selectAll() --> "+department_info_list);
	        return work_info_list;
	 }
	 
	 public List<work_info> get_work_info_by_approved(work_info _work_info)
	 {
		 List<work_info> work_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
	            work_info_list = session.selectList("work_info.select_by_receiver_id_and_type_and_status",_work_info);
	        } finally {
	            session.close();
	        }
	        //System.out.println("selectAll() --> "+department_info_list);
	        return work_info_list;
	 }
}
