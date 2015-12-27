package com.dbconnector;

import java.util.List;

import com.dao.msg_info_dao;
import com.dao.work_info_dao;
import com.dao.work_record_info_dao;
import com.data.msg_info;
import com.data.work_record_info;
import com.mybatis.mybatis_connection_factory;

public class msg_db_connector 
{
	
	
	public static boolean insert_msg(msg_info _msg_info)
	{
        msg_info_dao _msg_info_dao=new msg_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		boolean rs=_msg_info_dao.insert(_msg_info);
		return rs;
	}
	
	public static int get_msg_total_page(int employee_id,int msg_status)
	{
		int msg_total_num;   //总台账查询条目
		int msg_total_page;  //台账查询显示总页数
		msg_info_dao _msg_info_dao=new msg_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		msg_total_num=_msg_info_dao.get_msg_total_num_by_by_user(employee_id,msg_status);
		msg_total_page=(int)Math.ceil((float)msg_total_num/11.0f);
		return msg_total_page;
	}
	
	public static List<msg_info> get_msg_info_list(int employee_id,int msg_status,int msg_page)
	{
		 List<msg_info> msg_info_list;
		   msg_info_dao _msg_info_dao=new msg_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		   msg_info_list=_msg_info_dao.select_by_owner_id(employee_id,msg_status,msg_page);
		   return msg_info_list;
	}
	
	public static boolean update_msg_status(msg_info _msg_info)
	{
		msg_info_dao _msg_info_dao=new msg_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		boolean rs=_msg_info_dao.update_msg_status(_msg_info);
		return rs;
	}
}
