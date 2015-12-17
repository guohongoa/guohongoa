package com.dbconnector;

import java.util.List;

import com.dao.relationship_info_dao;
import com.dao.work_contact_info_dao;
import com.dao.work_info_dao;
import com.dao.work_waiting_info_dao;
import com.data.relationship_info;
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
		
		public static boolean waiting_insert_db(work_waiting_info _work_waiting_info)
		{
            work_waiting_info_dao _work_waiting_info_dao=new work_waiting_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			
			boolean rs=_work_waiting_info_dao.insert(_work_waiting_info);
			//返回id
			return rs;
		}
}
