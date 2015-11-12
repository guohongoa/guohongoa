
package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.service_info;
import com.selector.service_selector;


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
		 
		 public List<service_info> select_by_service_sender_id(int service_sender_id,int service_page)
		 {
			 List<service_info> service_info_list=null;
			 SqlSession session=this.sqlSessionFactory.openSession();
			 try {
				 service_selector _service_selector=new service_selector();//五服务加分页信息
				  _service_selector.set_service_sender_id(service_sender_id);
				  //固定一页最多取十一条数据
				  _service_selector.set_servcie_begin(11*(service_page-1));
				  _service_selector.set_service_num(11);
		           service_info_list = session.selectList("service_info.select_by_service_sender_id",_service_selector);
		        } finally {
		            session.close();
		        }
		        System.out.println("select_by_service_sender_id() --> "+service_info_list);
		        return service_info_list;
		 }
		 
		 //根据指定用户查询数据库条目数量
		 public  int get_service_total_num_by_by_user(int service_sender_id)
		 {
			 int service_total_num;
			 List<service_info> service_info_list=null;
			 
			 SqlSession session=this.sqlSessionFactory.openSession();
			 try {
				 service_selector _service_selector=new service_selector();//五服务加分页信息
				  _service_selector.set_service_sender_id(service_sender_id);
				  _service_selector.set_servcie_begin(0);
				  _service_selector.set_service_num(99999999);
				  
				  service_info_list = session.selectList("service_info.select_by_service_sender_id",_service_selector);
				  service_total_num =service_info_list.size();
		        } finally {
		            session.close();
		        }
		        System.out.println("select_by_service_village_id_and_service_type --> "+service_info_list);
			 
			 return service_total_num;
		 }
		 
		 public List<service_info>  select_by_service_village_id_and_service_type(service_info _service_info,int service_page)
		 {
			 List<service_info> service_info_list=null;
			 SqlSession session=this.sqlSessionFactory.openSession();
			 try {
				  service_selector _service_selector=new service_selector();//五服务加分页信息
				  _service_selector.set_service_village_id(_service_info.get_service_village_id());
				  _service_selector.set_service_type(_service_info.get_service_type());
				  //固定一页最多取十一条数据
				  _service_selector.set_servcie_begin(11*(service_page-1));
				  _service_selector.set_service_num(11);
				  service_info_list = session.selectList("service_info.select_by_service_village_id_and_service_type",_service_selector);
		        } finally {
		            session.close();
		        }
		        System.out.println("select_by_service_village_id_and_service_type --> "+service_info_list);
		        return service_info_list;
		 }
		 
		 public int get_service_total_num_by_service_village_id_and_service_type(service_info _service_info)
		 {
			 int service_total_num;
			 List<service_info> service_info_list=null;
			 
			 SqlSession session=this.sqlSessionFactory.openSession();
			 try {
				 service_selector _service_selector=new service_selector();//五服务加分页信息
				  _service_selector.set_service_village_id(_service_info.get_service_village_id());
				  _service_selector.set_service_type(_service_info.get_service_type()); 
				  _service_selector.set_servcie_begin(0);
				  _service_selector.set_service_num(99999999);
				  
				  service_info_list = session.selectList("service_info.select_by_service_village_id_and_service_type",_service_selector);
				  service_total_num =service_info_list.size();
		        } finally {
		            session.close();
		        }
		        System.out.println("select_by_service_village_id_and_service_type --> "+service_info_list);
			 
			 return service_total_num;
		 }
		 
		 public void delete_from_id(int service_msgid)
		 {
			 SqlSession session = sqlSessionFactory.openSession();
			  
		        try {
		            session.delete("service_info.delete", service_msgid);
		        } finally {
		            session.commit();
		            session.close();
		        }
		        System.out.println("delete("+service_msgid+")");
		 }
		 
}
