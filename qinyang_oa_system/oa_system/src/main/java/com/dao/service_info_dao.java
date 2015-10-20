package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.service_info;


public class service_info_dao 
{
private SqlSessionFactory sqlSessionFactory=null;  //数据库链接器
	
	public service_info_dao(SqlSessionFactory sqlSessionFactory) 
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
		
		public boolean insert(service_info _service_info)
		{
		       int id = -1;
		        SqlSession session = this.sqlSessionFactory.openSession();
		 
		        try {
		            id = session.insert("service_info.insert", _service_info);
		        } finally {
		            session.commit();
		            session.close();
		        }
		        System.out.println("insert("+_service_info+") --> "+_service_info.get_service_msgid());
		        
		        if(id==-1)
		        {
		        	return false;//插入失败
		        }
		        else
		        {
		        	return true;//插入成功
		        }
		 }
		
		//返回所有service 服务信息
		 public List<service_info> select_all()
		 {
			 List<service_info> service_info_list=null;
			 SqlSession session=this.sqlSessionFactory.openSession();
			 try {
		           service_info_list = session.selectList("service_info.select_all");
		        } finally {
		            session.close();
		        }
		        System.out.println("selectAll() --> "+service_info_list);
		        return service_info_list;
		 }
}
