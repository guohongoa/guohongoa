package com.dbconnector;

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
}
