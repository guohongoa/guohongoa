package com.dbconnector;

import java.util.List;

import com.dao.employee_info_dao;
import com.dao.relationship_info_dao;
import com.dao.service_info_dao;
import com.dao.work_contact_info_dao;
import com.dao.work_info_dao;
import com.dao.work_waiting_info_dao;
import com.data.employee_info;
import com.data.relationship_info;
import com.data.service_info;
import com.data.work_contact_info;
import com.data.work_info;
import com.data.work_waiting_info;
import com.mybatis.mybatis_connection_factory;

public class work_db_connector 
{
	
		//插入工作任务信息
		public static int work_insert_db(work_info _work_info)  
		{
			work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			
			int id=_work_info_dao.insert(_work_info);
			//返回id
			return id;
		}
		
		//根据本人id和上下级查询
		public static List<work_contact_info> get_work_contact_list_by_owner_id(int owner_id,int relationship_type )
		{
			work_contact_info_dao _work_contact_info_dao=new work_contact_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			 List<work_contact_info> work_contact_list= _work_contact_info_dao.get_work_contact_list_by_owner_id_and_type(owner_id,relationship_type);
			 return work_contact_list;
		}
		
		//根据用户id查询对应工作任务信息
		public static List<work_info> get_work_info_by_owner_id(int owner_id)
		{
			work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			List<work_info> work_info_list=_work_info_dao.get_by_work_sender_id(owner_id);
			return work_info_list;
		}
		
		//以接受者id查询安排工作
		public static List<work_info> get_work_info_by_receiver_id_and_type(int receiver_id,int work_type)
		{
			work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			
			work_info _work_info=new work_info();
			_work_info.set_work_receiver_id(receiver_id);
			_work_info.set_work_type(work_type);
			
			List<work_info> work_info_list=_work_info_dao.get_work_info_by_receiver_id_and_type(_work_info);
			return work_info_list;
		}
		
		//以发送者和id查询安排工作
		public static List<work_info> get_work_info_by_sender_id_and_type(int sender_id,int work_type)
		{
            work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			
			work_info _work_info=new work_info();
			_work_info.set_work_sender_id( sender_id);
			_work_info.set_work_type(work_type);
			
			List<work_info> work_info_list=_work_info_dao.get_work_info_by_sender_id_and_type(_work_info);
			return work_info_list;
		}
		
		
		
		public static List<work_info> get_work_info_by_approved(int sender_id,int work_type,int work_status)
		{
            work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			
			work_info _work_info=new work_info();
			_work_info.set_work_sender_id( sender_id);
			_work_info.set_work_type(work_type);
			_work_info.set_work_status(work_status);
			
			List<work_info> work_info_list=_work_info_dao.get_work_info_by_approved(_work_info);
			return work_info_list;
		}
		
		//全部的工作
		public static List<work_info> get_all_work_info_by_owner_id(int employee_id)
		{
			work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			work_info _work_info=new work_info();
			//将发送人和接受人均设置成用户id,状态设置为0
			_work_info.set_work_sender_id(employee_id);
			_work_info.set_work_receiver_id(employee_id);
			List<work_info> work_info_list=_work_info_dao.get_all_work_all_by_owner(_work_info);
			return work_info_list;
		}
		//-------------------------------------------------------------------
		//待审批模块数据库操作函数
		
		public static boolean waiting_insert_db(work_waiting_info _work_waiting_info)
		{
            work_waiting_info_dao _work_waiting_info_dao=new work_waiting_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			
			boolean rs=_work_waiting_info_dao.insert(_work_waiting_info);
			//返回id
			return rs;
		}
		
		
		//待审批页面显示
		public static List<work_waiting_info> get_work_waiting_inf_by_work_receiver_id(int work_receiver_id)
		{
			work_waiting_info_dao _work_waiting_info_dao=new work_waiting_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			List<work_waiting_info> work_waiting_list=_work_waiting_info_dao.get_all_by_work_receiver_id(work_receiver_id);
			return work_waiting_list;
		}
		
		//所有工作
		public static int get_work_all_total_page_by_owner_id(int employee_id,int work_status)
		{
			int work_total_num;
			int work_total_page;
			work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			work_total_num=_work_info_dao.get_all_work_total_num_by_by_user(employee_id,work_status);
			work_total_page=(int)Math.ceil((float)work_total_num/11.0f);
			return work_total_page;
		}
		
		
		//得到全部工作信息
		public static List<work_info> get_all_work_list_by_employee_id_and_page(int employee_id,int work_stauts,int work_page)
		{
			 List<work_info> work_info_list;
			 work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			 work_info_list=_work_info_dao.get_all_work_list_by_employee_id_and_page(employee_id,work_stauts,work_page);
			   return work_info_list;
		}
		
		public static int get_work_feedback_list_page_by_owner_id(int work_start,int employee_id,int work_type)
		{
			int work_total_num;
			int work_total_page;
			work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			work_total_num=_work_info_dao.get_feedback_list_total_num_by_by_user(work_start, employee_id, work_type);
			work_total_page=(int)Math.ceil((float)work_total_num/11.0f);
			return work_total_page;
		}
		
		public static int get_work_all_feedback_page_by_owner_id(int work_start,int employee_id,int work_type)
		{
			int work_total_num;
			int work_total_page;
			work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			work_total_num=_work_info_dao.get_all_feedback_total_num_by_by_user(work_start,employee_id,work_type);
			work_total_page=(int)Math.ceil((float)work_total_num/11.0f);
			return work_total_page;
		}
		
		
		
		public static List<work_info> get_feedback_list_by_employee_id_and_page(int work_start,int employee_id,int work_type,int work_page)
		{
			 List<work_info> work_info_list;
			 work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			 work_info_list=_work_info_dao.get_feedback_list_by_employee_id_and_page(work_start,employee_id,work_type,work_page);
			   return work_info_list;
		}
		
		public static List<work_info> get_all_feedback_by_employee_id_and_page(int work_start,int employee_id,int work_type,int work_page)
		{
			 List<work_info> work_info_list;
			 work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			 work_info_list=_work_info_dao.get_all_feedback_by_employee_id_and_page(work_start, employee_id, work_type, work_page);
			   return work_info_list;
		}
		
		public static int get_arrange_all_total_page_by_owner_id(int work_category,int work_start,int sender_id,int work_type)
		{
			int work_total_num;
			int work_total_page;
			work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			work_total_num=_work_info_dao.get_all_arrange_total_num_by_by_user(work_category,work_start,sender_id,work_type);
			work_total_page=(int)Math.ceil((float)work_total_num/11.0f);
			return work_total_page;
		}
		
		public static List<work_info> get_work_arrange_all_by_page(int work_category,int work_start,int sender_id,int work_type,int work_page)
		{

			 List<work_info> work_info_list;
			 work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			 work_info_list=_work_info_dao.get_all_work_all_arrange_by_employee_id_and_page(work_category,work_start,sender_id,work_type,work_page);
			 return work_info_list;
		}
		
		public static int get_work_all_report_total_page_by_owner_id(int sender_id,int work_type)
		{
			int work_total_num;
			int work_total_page;
			work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			work_total_num=_work_info_dao.get_all_report_total_num_by_by_user(sender_id,work_type);
			work_total_page=(int)Math.ceil((float)work_total_num/11.0f);
			return work_total_page;
		}
		
		public static List<work_info> get_work_all_report_by_sender_id_and_type(int sender_id,int work_type,int work_page)
		{
			 List<work_info> work_info_list;
			 work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			 work_info_list=_work_info_dao.get_all_work_all_report_by_employee_id_and_page(sender_id,work_type,work_page);
			 return work_info_list;
		}
		
		public static int get_work_all_approved_total_page_by_owner_id(int receiver_id,int work_type,int work_status)
		{
			int work_total_num;
			int work_total_page;
			work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			work_total_num=_work_info_dao.get_all_approved_total_num_by_by_user(receiver_id,work_type,work_status);
			work_total_page=(int)Math.ceil((float)work_total_num/11.0f);
			return work_total_page;
		}
		
		public static List<work_info> get_work_info_by_approved_and_page(int receiver_id,int work_type,int work_status,int work_page)
		{
			 List<work_info> work_info_list;
			 work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			 work_info_list=_work_info_dao.get_all_approved_by_employee_id_and_page(receiver_id,work_type,work_status,work_page);
			 return work_info_list;
		}
		
		public static int get_work_waiting_total_page_by_owner_id(int work_receiver_id)
		{
			int work_total_num;
			int work_total_page;
			work_waiting_info_dao _work_waiting_info_dao=new work_waiting_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			work_total_num=_work_waiting_info_dao.get_waiting_total_num_by_by_user(work_receiver_id);
			work_total_page=(int)Math.ceil((float)work_total_num/11.0f);
			return work_total_page;
		}
		
		public static List<work_waiting_info> get_work_waiting_inf_by_work_receiver_id_and_page(int employee_id,int work_page)
		{
			List<work_waiting_info> work_waiting_list;
			work_waiting_info_dao _work_waiting_info_dao=new work_waiting_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			work_waiting_list=_work_waiting_info_dao.get_all_by_work_receiver_id_and_page(employee_id,work_page);
			return work_waiting_list;
		}
		
		public static work_info get_work_info_by_work_id(int work_id)
		{
			work_info_dao _work_info_dao=new work_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			 work_info _work_info=_work_info_dao.select_by_work_id(work_id);
		     return _work_info;
		}
		
}
