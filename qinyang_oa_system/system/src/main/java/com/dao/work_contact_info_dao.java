package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.user_info;
import com.data.work_contact_info;


public class work_contact_info_dao 
{
private SqlSessionFactory sqlSessionFactory=null;  //数据库链接器
	
	//构造函数，初始化数据库连接器
	public work_contact_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public boolean insert(work_contact_info _work_contact_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("work_contact_info.insert", _work_contact_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_work_contact_info+") --> "+_work_contact_info.get_contact_id());
	        
	        if(id==-1)
	        {
	        	return false;//插入失败
	        }
	        else
	        {
	        	return true;//插入成功
	        }
	  }
	 
	public  List<work_contact_info> get_work_contact_list_by_owner_id(int owner_id)
	 {
		 List<work_contact_info> work_contact_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 work_contact_info _work_contact_info=new work_contact_info();
			 _work_contact_info.set_owner_id(owner_id);
			 _work_contact_info.set_relationship_type(0);
			 work_contact_info_list = session.selectList("work_contact_info.select_by_owner_id",_work_contact_info);
	        } finally {
	            session.close();
	        }
	        System.out.println("selectAll() --> "+ work_contact_info_list);
	        return  work_contact_info_list;
	 }
	
	
	public  List<work_contact_info> get_work_contact_list_by_owner_id_and_type(int owner_id,int relationship_type)
	 {
		 List<work_contact_info> work_contact_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 work_contact_info _work_contact_info=new work_contact_info();
			 _work_contact_info.set_owner_id(owner_id);
			 _work_contact_info.set_relationship_type(relationship_type);
			 work_contact_info_list = session.selectList("work_contact_info.select_by_owner_id",_work_contact_info);
	        } finally {
	            session.close();
	        }
	        System.out.println("selectAll() --> "+ work_contact_info_list);
	        return  work_contact_info_list;
	 }
	
	public void del_by_double_id(work_contact_info _work_contact_info)
	{
		 SqlSession session = sqlSessionFactory.openSession();
		  
	        try {
	            session.delete("work_contact_info.delete_by_double_id", _work_contact_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("delete("+_work_contact_info+")");
	}
	
	
}
