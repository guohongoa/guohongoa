package com.dbconnector;

import java.util.List;

import com.dao.employee_info_dao;
import com.data.employee_info;
import com.mybatis.mybatis_connection_factory;

public class userinfo_db_connector 
{
	/*
	public static boolean register_insert_db(system_user_info _system_user_info)
	{
		//插入系统用户信息表
		system_user_info_dao _system_user_info_dao=new system_user_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		boolean system_insert_rs=_system_user_info_dao.insert(_system_user_info);
		
		user_info_dao _user_info_dao=new user_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		user_info _user_info=new user_info();
		
		//将用户id和用户姓名同时插入系统用户表和用户信息表
		//将配置表system_user_info插入数据中的  useGeneratedKeys="true" keyProperty="user_id"这两个属性添加可获取自增id
		_user_info.set_user_id(_system_user_info.get_user_id());
		_user_info.set_user_name(_system_user_info.get_user_name());
		
		boolean user_insert_rs=_user_info_dao.insert(_user_info);
		
		boolean rs;//两个数据库表的插入结果
		
		if(system_insert_rs||user_insert_rs)
		{
			rs=true;
		}
		else
		{
			rs=false;
		}
		return rs;
	}
//---------------------------------------------------------------------------------
    //用户信息模块功能函数
    //查询所有
	public static List<user_info> get_user_info_list()
	{
		 List<user_info> user_info_list;
		   user_info_dao _user_info_dao=new user_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		   user_info_list=_user_info_dao.select_all();
		   return user_info_list;
	}
*/	
	public static employee_info get_employee_info_by_employee_phone(String employee_phone)
	  {
		  //system_user_info _system_user_info=new system_user_info();
		   employee_info _employee_info=new employee_info();
		   employee_info_dao _employee_info_dao=new employee_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		  _employee_info=_employee_info_dao.select_by_user_phone(employee_phone);
		  return _employee_info;
	  }
}
