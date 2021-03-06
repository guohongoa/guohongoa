package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.department_info;
import com.data.service_info;
import com.data.service_village_info;

public class service_village_info_dao 
{
	private SqlSessionFactory sqlSessionFactory=null;  //数据库链接器
	
	public service_village_info_dao(SqlSessionFactory sqlSessionFactory) 
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
		
		public boolean insert(service_village_info _service_village_info)
		{
		       int id = -1;
		        SqlSession session = this.sqlSessionFactory.openSession();
		 
		        try {
		            id = session.insert("service_village_info.insert", _service_village_info);
		        } finally {
		            session.commit();
		            session.close();
		        }
		        System.out.println("insert("+_service_village_info+") --> "+_service_village_info.get_service_village_id());
		        
		        if(id==-1)
		        {
		        	return false;//插入失败
		        }
		        else
		        {
		        	return true;//插入成功
		        }
		 }
		
		public List<service_village_info> get_service_village_info_list_by_county_id (int service_village_county_id)
		{
			 List<service_village_info> service_village_info_list=null;
			 SqlSession session=this.sqlSessionFactory.openSession();
			 try {
				 service_village_info_list = session.selectList("service_village_info.select_by_service_village_county_id",service_village_county_id);
		        } finally {
		            session.close();
		        }
		        System.out.println("select_by_service_category() --> "+service_village_info_list);
		        return service_village_info_list;
		}
		
		public boolean delete_villages_by_county_id(int service_village_county_id)
		{
			int id=-1;
			SqlSession session = sqlSessionFactory.openSession();
			 
	        try {
	            id=session.delete("service_village_info.delete_by_county_id",  service_village_county_id);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("delete("+service_village_county_id+")");
	        
	        if(id==-1)
	        {
	        	return false;//删除失败
	        }
	        else
	        {
	        	return true;//删除成功
	        }
	 
	    }
		
		public service_village_info get_service_village_info_by_id(int service_village_id)
		{
			service_village_info _service_village_info = null;
		        SqlSession session = sqlSessionFactory.openSession();
		        try {
		        	_service_village_info = session.selectOne("service_village_info.select_by_id", service_village_id);
		 
		        } finally {
		            session.close();
		        }
		        System.out.println("selectByUserid("+service_village_id+") --> "+_service_village_info);
		        return _service_village_info;
		}
}
