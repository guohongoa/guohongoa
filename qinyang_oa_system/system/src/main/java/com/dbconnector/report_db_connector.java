package com.dbconnector;

import java.util.List;

import com.dao.report_info_dao;
import com.data.report_info;
import com.mybatis.mybatis_connection_factory;

public class report_db_connector 
{
	//发起任务时，将任务信息加入数据库
		public static boolean send_report_insert_db(report_info _report_info)  
		{
			report_info_dao _report_info_dao=new report_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			
			boolean rs=_report_info_dao.insert(_report_info);
			return rs;
		}
		
		 public static List<report_info> get_report_info_list()
		   {
			   List<report_info> report_info_list;
			   report_info_dao _report_info_dao=new report_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			   report_info_list=_report_info_dao.select_all();
			   return report_info_list;
			   
		   }
}
