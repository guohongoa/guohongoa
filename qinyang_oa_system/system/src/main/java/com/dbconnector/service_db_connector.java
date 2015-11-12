package com.dbconnector;

import java.util.ArrayList;
import java.util.List;

import com.dao.service_info_dao;
import com.dao.service_village_county_info_dao;
import com.dao.service_village_info_dao;
import com.data.service_info;
import com.data.service_village_county_info;
import com.data.service_village_info;
import com.mybatis.mybatis_connection_factory;

public class service_db_connector 
{
	//五服务消息信息对应数据库功能函数
			public static boolean send_service_insert_db(service_info _service_info)  
			{
				service_info_dao _service_info_dao=new service_info_dao(mybatis_connection_factory.getSqlSessionFactory());
				
				boolean rs=_service_info_dao.insert(_service_info);
				return rs;
			}
			
			public static List<service_info> get_service_info_list_by_service_sender_id(int service_sender_id,int service_page)
			   {
				   List<service_info> service_info_list;
				   service_info_dao _service_info_dao=new service_info_dao(mybatis_connection_factory.getSqlSessionFactory());
				   service_info_list=_service_info_dao.select_by_service_sender_id(service_sender_id,service_page);
				   return service_info_list;
				   
			   }
			
			//查询指定发送用户的分页数量
			public static int get_service_total_page_by_user(int service_sender_id)
			{
				int service_total_num;
				int service_total_page;
				service_info_dao _service_info_dao=new service_info_dao(mybatis_connection_factory.getSqlSessionFactory());
				service_total_num=_service_info_dao.get_service_total_num_by_by_user(service_sender_id);
				service_total_page=(int)Math.ceil((float)service_total_num/11.0f);
				return service_total_page;
			}
			
			//使用村庄id、服务类型及页数查询五服务信息列表
			public static List<service_info> get_service_info_list_by_service_village_id_and_service_type(service_info _service_info,int service_page)
			   {
				   List<service_info> service_info_list;
				   service_info_dao _service_info_dao=new service_info_dao(mybatis_connection_factory.getSqlSessionFactory());
				   service_info_list=_service_info_dao.select_by_service_village_id_and_service_type(_service_info,service_page);
				   return service_info_list;
				   
			   }
			
			public static int get_service_total_page_by_service_village_id_and_service_type(service_info _service_info)
			{
				int service_total_num;
				int service_total_page;
				service_info_dao _service_info_dao=new service_info_dao(mybatis_connection_factory.getSqlSessionFactory());
				service_total_num=_service_info_dao.get_service_total_num_by_service_village_id_and_service_type(_service_info);
				service_total_page=(int)Math.ceil((float)service_total_num/11.0f);
				return service_total_page;
			}
			
			
			
			
			 public static void del_service_from_id(int service_msgid)
			    {
				 service_info_dao _service_info_dao=new service_info_dao(mybatis_connection_factory.getSqlSessionFactory());
				 _service_info_dao.delete_from_id(service_msgid);
			    }
			 
			//五服务村庄信息对应数据库功能函数
				public static boolean service_village_insert_db(service_village_info _service_village_info)
				{
					service_village_info_dao _service_village_info_dao=new service_village_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					
					boolean rs=_service_village_info_dao.insert(_service_village_info);
					return rs;
				}
				
				public static List<List<service_village_info>> get_village_list_by_county()
				{
					service_village_info_dao _service_village_info_dao=new service_village_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					service_village_county_info_dao _service_village_county_info_dao=new service_village_county_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					
					 List<List<service_village_info>> village_list=new ArrayList<List<service_village_info>>();
					 
					 List<service_village_county_info> service_village_county_list=_service_village_county_info_dao.select_all();
					 
					 for(service_village_county_info _county_info:service_village_county_list)
					 {
						 int service_village_county_id=_county_info.get_service_village_county_id();
						 List<service_village_info> village_info_list=_service_village_info_dao.get_service_village_info_list_by_county_id(service_village_county_id);
						 village_list.add(village_info_list);
					 }
					 
					 return village_list;
				}
				
				
		   //五服务乡镇对应数据库功能函数
				public static boolean service_village_county_inset_db(service_village_county_info _service_village_info)
				{
	                     service_village_county_info_dao _service_village_county_info_dao=new service_village_county_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					
					boolean rs=_service_village_county_info_dao.insert(_service_village_info);
					return rs;
				}
				
				public static List<service_village_county_info> get_service_village_county_list()
				   {
					   List<service_village_county_info> service_village_county_list;
					   service_village_county_info_dao _service_village_county_info_dao=new service_village_county_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					   service_village_county_list=_service_village_county_info_dao.select_all();
					   return service_village_county_list;
				   }
				
				//根据id查询乡镇信息
				public static service_village_county_info get_service_village_county_info_by_id(int service_village_county_id)
				{
					service_village_county_info_dao _service_village_county_info_dao=new service_village_county_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					service_village_county_info _service_village_county_info=_service_village_county_info_dao.get_service_village_county_info_by_id(service_village_county_id);
					return _service_village_county_info;
				}
				
				public static service_info get_service_info_by_service_msgid(int service_msgid)
				{
					service_info_dao _service_info_dao=new service_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					service_info _service_info=_service_info_dao.get_service_info_by_service_msgid(service_msgid);
					return _service_info;
				}
}
