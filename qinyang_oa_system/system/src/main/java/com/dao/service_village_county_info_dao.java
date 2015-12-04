package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.department_info;
import com.data.service_village_county_info;
import com.selector.department_selector;
import com.selector.village_selector;

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
		 
		 public List<service_village_county_info> select_by_page(int village_page)
		 {
			 List<service_village_county_info> service_village_county_list=null;
			 SqlSession session=this.sqlSessionFactory.openSession();
			
			 
			 try {
				 village_selector _village_selector=new village_selector();
				 _village_selector.set_service_village_county_begin(11*(village_page-1));
				 _village_selector.set_service_village_county_num(11);
				  //固定一页最多取十一条数据
				 service_village_county_list = session.selectList("service_village_county_info.select_by_page",_village_selector);
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
		 
		 public int get_village_total_num()
		 {
			 int village_total_num;
			 List<service_village_county_info> village_info_list=null;
			 
			 SqlSession session=this.sqlSessionFactory.openSession();
			 try {
				 village_selector _village_selector=new village_selector();//五服务加分页信息
				  _village_selector.set_service_village_county_begin(0);
				  _village_selector.set_service_village_county_num(999999999);
				  
				  village_info_list = session.selectList("service_village_county_info.select_by_page",_village_selector);
				  village_total_num =village_info_list.size();
		        } finally {
		            session.close();
		        }
		        System.out.println("select_by_pag --> "+village_info_list);
			 
			 return village_total_num;
		 }
}
