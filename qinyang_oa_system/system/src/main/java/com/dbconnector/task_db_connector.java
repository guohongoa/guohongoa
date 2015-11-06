package com.dbconnector;

import java.util.List;

import com.dao.task_info_dao;
import com.data.task_info;
import com.mybatis.mybatis_connection_factory;

public class task_db_connector 
{
	//发起任务时，将任务信息加入数据库
		public static boolean send_task_insert_db(task_info _task_info)  
		{
			task_info_dao _task_info_dao=new task_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			
			boolean rs=_task_info_dao.insert(_task_info);
			return rs;
		}
		
		 public static List<task_info> get_task_info_list()
		   {
			   List<task_info> task_info_list;
			   task_info_dao _task_info_dao=new task_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			   task_info_list=_task_info_dao.select_all();
			   return task_info_list;
			   
		   }
}
