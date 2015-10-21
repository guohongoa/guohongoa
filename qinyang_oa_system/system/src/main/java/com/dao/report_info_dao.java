package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.report_info;
import com.data.task_info;


public class report_info_dao 
{
	private SqlSessionFactory sqlSessionFactory=null;  //数据库链接器
	
	public report_info_dao(SqlSessionFactory sqlSessionFactory) 
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
		
		public boolean insert(report_info _report_info)
		{
		       int id = -1;
		        SqlSession session = this.sqlSessionFactory.openSession();
		 
		        try {
		            id = session.insert("report_info.insert", _report_info);
		        } finally {
		            session.commit();
		            session.close();
		        }
		        System.out.println("insert("+_report_info+") --> "+_report_info.get_report_id());
		        
		        if(id==-1)
		        {
		        	return false;//插入失败
		        }
		        else
		        {
		        	return true;//插入成功
		        }
		 }
		
		 public List<report_info> select_all()
		 {
			 List<report_info> report_info_list=null;
			 SqlSession session=this.sqlSessionFactory.openSession();
			 try {
		            report_info_list = session.selectList("report_info.select_all");
		        } finally {
		            session.close();
		        }
		        System.out.println("selectAll() --> "+report_info_list);
		        return report_info_list;
		 }
	}
	

