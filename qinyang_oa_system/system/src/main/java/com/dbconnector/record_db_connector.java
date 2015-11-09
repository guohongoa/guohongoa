package com.dbconnector;

import java.util.List;

import com.dao.service_info_dao;
import com.dao.work_record_info_dao;
import com.data.service_info;
import com.data.work_record_info;
import com.mybatis.mybatis_connection_factory;

public class record_db_connector 
{
	public static boolean record_insert_db(work_record_info _work_record_info)  
	{
		work_record_info_dao _record_info_dao=new work_record_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		boolean rs=_record_info_dao.insert(_work_record_info);
		return rs;
	}
	
	public static List<work_record_info>  get_work_record_info_list_by_work_record_creatorid(int work_record_creatorid)
	{
		 List<work_record_info> record_info_list;
		   work_record_info_dao _record_info_dao=new work_record_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		   record_info_list=_record_info_dao.select_by_work_record_creatorid(work_record_creatorid);
		   return record_info_list;
	}
	
	public static work_record_info get_work_record_info_by_work_record_id(int work_record_id)
	{
		work_record_info _work_record_info;
		work_record_info_dao _record_info_dao=new work_record_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		_work_record_info=_record_info_dao.select_by_work_record_id(work_record_id);
		return _work_record_info;
	}
}
