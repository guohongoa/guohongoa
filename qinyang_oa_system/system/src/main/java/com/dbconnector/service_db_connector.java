package com.dbconnector;

import java.util.ArrayList;
import java.util.List;

import com.dao.department_info_dao;
import com.dao.employee_info_dao;
import com.dao.service_info_dao;
import com.dao.service_village_county_info_dao;
import com.dao.service_village_info_dao;
import com.dao.work_contact_info_dao;
import com.dao.work_info_dao;
import com.data.service_info;
import com.data.service_village_county_info;
import com.data.service_village_info;
import com.data.work_contact_info;
import com.mybatis.mybatis_connection_factory;

public class service_db_connector 
{
	//五服务消息信息对应数据库功能函数
			public static int  send_service_insert_db(service_info _service_info)  
			{
				service_info_dao _service_info_dao=new service_info_dao(mybatis_connection_factory.getSqlSessionFactory());
				
				int service_id=_service_info_dao.insert(_service_info);
				return service_id;
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
			 //同镇村庄批量输入数据库
				public static void service_village_insert_db(String str_service_village_names,int service_village_county_id,String service_village_county_name,String service_village_addtime)
				{
					
					String [] service_village_name_array=str_service_village_names.split(" "); //将以空格隔开的字符串变为数组
					
					service_village_info_dao _service_village_info_dao=new service_village_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					
					for(String service_village_name:service_village_name_array)
					{
					   service_village_info _service_village_info=new service_village_info();
					   _service_village_info.set_service_village_name(service_village_name);
					   _service_village_info.set_service_village_county_id(service_village_county_id);
					   _service_village_info.set_service_village_county_name(service_village_county_name);
					   _service_village_info.set_service_village_addtime(service_village_addtime);
						boolean rs=_service_village_info_dao.insert(_service_village_info);
						System.out.println(rs);
					}
					
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
				
				//根据查询当页乡镇id，返回所有对应村庄的服务列表
				public static List<service_village_info> get_service_village_info_list_by_couty_list(List<service_village_county_info> service_village_county_info_list)
				{
					service_village_info_dao _service_village_info_dao=new service_village_info_dao(mybatis_connection_factory.getSqlSessionFactory()); 
					
					List<service_village_info> service_village_info_list=new ArrayList<service_village_info>();
					 
					//遍历五服务乡镇列表，根据id，逐个添加对应村庄信息
					 for(service_village_county_info county_info:service_village_county_info_list)
					 {  
						 int service_village_county_id=county_info.get_service_village_county_id();
						 List <service_village_info> current_village_info_list=_service_village_info_dao.get_service_village_info_list_by_county_id(service_village_county_id);
						 service_village_info_list.addAll(current_village_info_list);
					 }
					 
					 return service_village_info_list;
				}
				
		   //五服务乡镇对应数据库功能函数
				public static int service_village_county_insert_db(service_village_county_info _service_village_county_info)
				{
	                     service_village_county_info_dao _service_village_county_info_dao=new service_village_county_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					
					     int  service_village_county_id=_service_village_county_info_dao.insert(_service_village_county_info);
					     return service_village_county_id;
				}
				
				//依据页码分页查询
				public static List<service_village_county_info> get_service_village_county_list(int village_page)
				   {
					   List<service_village_county_info> service_village_county_list;
					   service_village_county_info_dao _service_village_county_info_dao=new service_village_county_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					   service_village_county_list=_service_village_county_info_dao.select_by_page(village_page);
					   return service_village_county_list;
				   }
				
				public static List<service_village_county_info> get_all_service_village_county_list()
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
				
				public static String get_service_village_names_by_count_id(int service_village_county_id)
				{
					String str_service_village_names="";
					service_village_info_dao _service_village_info_dao=new service_village_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					List<service_village_info> service_village_info_list=_service_village_info_dao.get_service_village_info_list_by_county_id(service_village_county_id);
					
					int i=0;
					for(service_village_info sinfo:service_village_info_list)
					{
						i++;
						if(i!=1)
						{
							str_service_village_names=str_service_village_names+" ";
						}
						str_service_village_names=str_service_village_names+sinfo.get_service_village_name();
					}
					str_service_village_names=f(str_service_village_names);
					return str_service_village_names;
				}
				
				public static String f(String s){
				    for(int i=0;i<s.length();i++){
				            if(s.charAt(i)!=' '){

				                    s=s.substring(i,s.length());

				                    break;

				             }

				    }

				    return s;

				}
				
				//更新乡镇信息
				public  static boolean update_county_info(service_village_county_info _service_village_county_info)
				{
					boolean rs;
					service_village_county_info_dao _service_village_county_info_dao=new service_village_county_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					rs=_service_village_county_info_dao.update_county_info(_service_village_county_info);
					
				    return rs;
				}
				
				//更新乡镇下属村庄信息
				public static boolean update_villages_name(int service_village_county_id,String service_village_county_name,String service_village_addtime,String str_service_village_names)
				{
					//先删除再添加
					
					boolean rs;
					service_village_info_dao _service_village_info_dao=new service_village_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					boolean rs1=_service_village_info_dao.delete_villages_by_county_id(service_village_county_id);
					boolean rs2=true;
					String [] service_village_name_array=str_service_village_names.split(" ");
					for(String service_village_name:service_village_name_array)
					{
					   service_village_info _service_village_info=new service_village_info();
					   _service_village_info.set_service_village_name(service_village_name);
					   _service_village_info.set_service_village_county_id(service_village_county_id);
					   _service_village_info.set_service_village_county_name(service_village_county_name);
					   _service_village_info.set_service_village_addtime(service_village_addtime);
					   
						boolean rs_temp=_service_village_info_dao.insert(_service_village_info);
						if(rs_temp==false)
						{
							rs2=true;
						}
		
					}
					if(rs1||rs2)
					{
						rs=true;
					}
					else
					{
						rs=false;
					}
				    return rs;
				}
				//删除乡镇信息
				public static void del_service_village_info_by_count_id(int service_village_county_id)
				{
					service_village_county_info_dao _service_village_county_info_dao=new service_village_county_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					_service_village_county_info_dao.del_county_info_by_id(service_village_county_id);
				}
				
				//获取村镇管理页面总页数
				public static int get_village_total_page()
				{
					int village_total_num;
					int village_total_page;
					service_village_county_info_dao _service_village_county_info_dao=new service_village_county_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					village_total_num=_service_village_county_info_dao.get_village_total_num();
					village_total_page=(int)Math.ceil((float)village_total_num/11.0f);
					return village_total_page;
				}
				
				public static service_village_info get_service_village_info_by_id(int service_village_id)
				{
					service_village_info_dao _service_village_info_dao=new service_village_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					service_village_info _service_village_info=_service_village_info_dao.get_service_village_info_by_id(service_village_id);
					return _service_village_info;
				}
				
				public static List<work_contact_info> get_work_contact_list_by_owner_id(int owner_id)
				{
					work_contact_info_dao _work_contact_info_dao=new work_contact_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					 List<work_contact_info> work_contact_list= _work_contact_info_dao.get_work_contact_list_by_owner_id(owner_id);
					 return work_contact_list;
				}
				
				public static boolean update_service_status(service_info _service_info)
				{
					service_info_dao _service_info_dao=new service_info_dao(mybatis_connection_factory.getSqlSessionFactory());work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					boolean rs=_service_info_dao.update_service_status(_service_info);
					return rs;
				}
				
				public static boolean update_published_status(service_info _service_info)
				{
					service_info_dao _service_info_dao=new service_info_dao(mybatis_connection_factory.getSqlSessionFactory());work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					boolean rs=_service_info_dao.update_published_status(_service_info);
					return rs;
				}
				
				public static List<service_village_info> get_village_list_by_county_id(int county_id)
				{
					service_village_info_dao _service_village_info_dao=new service_village_info_dao(mybatis_connection_factory.getSqlSessionFactory());
					List<service_village_info> service_village_info_list=_service_village_info_dao.get_service_village_info_list_by_county_id(county_id);
					return service_village_info_list;
				
				}
				
}
