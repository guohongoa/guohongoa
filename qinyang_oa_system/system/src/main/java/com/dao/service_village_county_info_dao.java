package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.service_village_county_info;

public class service_village_county_info_dao 
{
private SqlSessionFactory sqlSessionFactory=null;  //数据库链接器
	
	public service_village_county_info_dao(SqlSessionFactory sqlSessionFactory) 
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
		
		public int insert(service_village_county_info _service_village_county_info)
		{
		       int  service_village_county_id=-1;
		        SqlSession session = this.sqlSessionFactory.openSession();
		 
		        try {
		            session.insert("service_village_county_info.insert", _service_village_county_info);
		            service_village_county_id =_service_village_county_info.get_service_village_county_id();
		        } finally {
		            session.commit();
		            session.close();
		        }
		        System.out.println("insert("+_service_village_county_info+") --> "+_service_village_county_info.get_service_village_county_id());
		        return service_village_county_id;
		        
		 }
		
		 public List<service_village_county_info> select_all()
		 {
			 List<service_village_county_info> service_village_county_list=null;
			 SqlSession session=this.sqlSessionFactory.openSession();
			 try {
				 service_village_county_list = session.selectList("service_village_county_info.select_all");
		        } finally {
		            session.close();
		        }
		        System.out.println("selectAll() --> "+service_village_county_list);
		        return service_village_county_list;
		 }
		 
		 public service_village_county_info get_service_village_county_info_by_id(int service_village_county_id)
		 {
			 service_village_county_info _service_village_county_info = null;
		        SqlSession session = sqlSessionFactory.openSession();
		        try {
		            _service_village_county_info = session.selectOne("service_village_county_info.select_by_service_village_county_id",service_village_county_id);
		 
		        } finally {
		            session.close();
		        }
		        System.out.println("selectByUserid("+service_village_county_id+") --> "+_service_village_county_info);
		        return _service_village_county_info;
		 }
		 
		 //修改村镇管理乡镇信息
		 
		 public boolean update_county_info(service_village_county_info _service_village_county_info)
		 {
			 int id = -1;
		      SqlSession session = sqlSessionFactory.openSession();
		 
		      try {
		          id = session.update("service_village_county_info.update",_service_village_county_info);
		 
		      } finally {
		          session.commit();
		          session.close();
		      }
		      System.out.println("update("+_service_village_county_info+") --> updated");
		      
		      if(id==-1)
		        {
		        	return false;//修改失败
		        }
		        else
		        {
		        	return true;//修改成功
		        }
		 }
		 
		 public void del_county_info_by_id(int service_village_county_id)
		 {
			 SqlSession session = sqlSessionFactory.openSession();
			  
		        try {
		            session.delete("service_village_county_info.delete", service_village_county_id);
		        } finally {
		            session.commit();
		            session.close();
		        }
		        System.out.println("delete("+service_village_county_id+")");
		 }
}
