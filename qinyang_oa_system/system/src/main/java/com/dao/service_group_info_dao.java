package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.department_info;
import com.data.service_group_info;

public class service_group_info_dao 
{
private SqlSessionFactory sqlSessionFactory=null;  //数据库链接器
	
	public service_group_info_dao(SqlSessionFactory sqlSessionFactory) 
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
		
		public boolean insert(service_group_info _service_group_info)
		{
		       int id = -1;
		        SqlSession session = this.sqlSessionFactory.openSession();
		 
		        try {
		            id = session.insert("service_group_info.insert",_service_group_info);
		        } finally {
		            session.commit();
		            session.close();
		        }
		        System.out.println("insert("+_service_group_info+") --> "+_service_group_info.get_service_group_id());
		        
		        if(id==-1)
		        {
		        	return false;//插入失败
		        }
		        else
		        {
		        	return true;//插入成功
		        }
		 }
		
		public List<service_group_info> select_all()
		{
			 List<service_group_info> service_group_info_list=null;
			 SqlSession session=this.sqlSessionFactory.openSession();
			 try {
				 service_group_info_list = session.selectList("service_group_info.select_all");
		        } finally {
		            session.close();
		        }
		        System.out.println("selectAll() --> "+service_group_info_list);
		        return service_group_info_list;
		}
		
		public service_group_info select_by_id(int service_group_id)
		{
			service_group_info _service_group_info = null;
	        SqlSession session = sqlSessionFactory.openSession();
	        try {
	            _service_group_info = session.selectOne("service_group_info.select_by_service_group_info_id",service_group_id);
	 
	        } finally {
	            session.close();
	        }
	        System.out.println("selectByUserid("+service_group_id+") --> "+_service_group_info);
	        return _service_group_info;
		}
		
		public boolean update_service_group_info(service_group_info _service_group_info)
		{
			int id = -1;
		      SqlSession session = sqlSessionFactory.openSession();
		 
		      try {
		          id = session.update("service_group_info.update",_service_group_info);
		 
		      } finally {
		          session.commit();
		          session.close();
		      }
		      System.out.println("update("+_service_group_info+") --> updated");
		      
		      if(id==-1)
		        {
		        	return false;//修改失败
		        }
		        else
		        {
		        	return true;//修改成功
		        }
		}
		
		public void del_service_group_info_by_id(int service_group_id)
		{
			SqlSession session = sqlSessionFactory.openSession();
			  
	        try {
	            session.delete("service_group_info.delete", service_group_id);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("delete("+service_group_id+")");
		}
}
