package com.dbconnector;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.dao.employee_info_dao;
import com.dao.service_group_info_dao;
import com.data.employee_info;
import com.data.service_village_info;
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
	
	//输入五服务小组成员姓名、手机号，以空格间隔，将输入信息与employee_info核对，
   //核实后改变employee_info中employee_is_service_member值，将用户身份转换为五服务小组成员，可以使用对应的服务功能
	public static void add_service_member(String service_group_member,int service_type)
	{
		 employee_info_dao _employee_info_dao=new employee_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		employee_info _employee_info=new employee_info();
		String [] service_group_member_info_array=service_group_member.split(" ");
		int i=0;//循环次数
		for(String service_group_member_info:service_group_member_info_array)
		{
		  i++;
		 
		  if(i%2==1)
		  {
			  _employee_info.set_employee_name(service_group_member_info);
		  }
		  else
		  {
			  _employee_info.set_employee_phone(service_group_member_info);
			  //查询用户信息表，核实后改变用户状态
			  employee_info new_info=_employee_info_dao.select_by_user_phone(_employee_info.get_employee_phone());
			  System.out.println("cccccccc"+new_info.get_employee_name());
			  if(_employee_info.get_employee_name().equals(new_info.get_employee_name()))
			  {
				  int employee_service_group=service_type+1;//表单输入依照五服务数据库，与用户信息表五服务类型属性值间相差1
				  new_info.set_employee_service_group(employee_service_group);
				  _employee_info_dao.update_employee_service_group_type(new_info);
			  }
			  
		  }
	    }
	}
	
	//修改密码前，测试旧密码输入是否正确
	public static boolean check_passsword_correct(int employee_id,String employee_password)
	{
		boolean rs;//测试返回结果标志位
		employee_info_dao _employee_info_dao=new employee_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		//按id从数据库查询用户信息
		employee_info _employee_info=_employee_info_dao.select_by_employee_id(employee_id);
		
	   String employee_password_in_db=_employee_info.get_employee_password();
	   String employee_password_in_input=employee_password;
	   
	   if(employee_password_in_db.equals(employee_password_in_input))
	   {
		   rs=true;
	   }
	   else
	   {
		   rs=false;
	   }
	   
	   return rs;
	   
	}
	
	public static boolean update_password(int employee_id,String employee_password)
	{
		 boolean rs;
		 //新建employee_info对象，设置id和password，便于数据库更改数据
		 employee_info _employee_info=new employee_info();
		 _employee_info.set_employee_id(employee_id);
		 _employee_info.set_employee_password(employee_password);
		 
		 employee_info_dao _employee_info_dao=new employee_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		rs=_employee_info_dao.update_employee_password(_employee_info);
		
	    return rs;
	}
}
