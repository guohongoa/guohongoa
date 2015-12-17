package com.dbconnector;

import java.util.List;

import com.dao.service_info_dao;
import com.dao.work_record_info_dao;
import com.data.service_info;
import com.data.work_record_info;
import com.mybatis.mybatis_connection_factory;

//台账消息信息对应数据库功能函数

public class record_db_connector 
{
	public static int record_insert_db(work_record_info _work_record_info)  
	{
		work_record_info_dao _record_info_dao=new work_record_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		int record_id=_record_info_dao.insert(_work_record_info);
		return record_id;
	}
	
	public static List<work_record_info>  get_work_record_info_list_by_work_record_creatorid(int work_record_creatorid,int record_page)
	{
		 List<work_record_info> record_info_list;
		   work_record_info_dao _record_info_dao=new work_record_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		   record_info_list=_record_info_dao.select_by_work_record_creatorid(work_record_creatorid,record_page);
		   return record_info_list;
	}
	
	public static work_record_info get_work_record_info_by_work_record_id(int work_record_id)
	{
		work_record_info _work_record_info;
		work_record_info_dao _record_info_dao=new work_record_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		_work_record_info=_record_info_dao.select_by_work_record_id(work_record_id);
		return _work_record_info;
	}
	
	//根据用户id得到前台显示台账总页数
	public static int get_record_total_page_by_user(int work_record_creatorid)
	{
		int record_total_num;   //总台账查询条目
		int record_total_page;  //台账查询显示总页数
		work_record_info_dao _work_record_dao=new work_record_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		record_total_num=_work_record_dao.get_record_total_num_by_by_user(work_record_creatorid);
		record_total_page=(int)Math.ceil((float)record_total_num/11.0f);
		return record_total_page;
	}
}
