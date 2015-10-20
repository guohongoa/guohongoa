package com.viewcontroller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.system_user_info_dao;
import com.dao.task_info_dao;
import com.dao.user_info_dao;
import com.data.system_user_info;
import com.data.task_info;
import com.data.user_info;
import com.mybatis.mybatis_connection_factory;

import java.util.List;

import org.apache.log4j.*;
 
@Controller
public class userinfo_request_controller {
	
	//注册log4j
	final static Logger logger=Logger.getLogger(userinfo_request_controller.class);

 
	@RequestMapping("register.do")

	public ModelAndView regiseter_request(
			@RequestParam(value="username") String username,
			@RequestParam(value="password") String password
			)
	{
		//将表单响应结果插入系统信息数据库
		system_user_info _system_user_info=new system_user_info();
		_system_user_info.set_user_name(username);
		_system_user_info.set_user_password(password);
		
		//判断是否插入成功
		boolean b_is_success=register_insert_db(_system_user_info);
		String s_is_success;
		if(b_is_success==true)
		{
			s_is_success="注册成功";
		}
		else
		{
			s_is_success="注册失败";
		}
		
		//页面内容显示
		ModelAndView mv=new ModelAndView();
		mv=get_register_display_data(_system_user_info, s_is_success);
		return mv;
		
		

	}
	
	@RequestMapping("display_user_info.do")
	//返回所有用户信息，传至前端显示成列表
	public ModelAndView display_user_info_request()
	{
		List<user_info> user_info_list;
		user_info_list=get_user_info_list();//返回所有用户信息,存储在队列中
		
		 ModelAndView mv=new ModelAndView();
		 mv.addObject("user_info_list", user_info_list);
		 return mv;
		
		
	}
	
//-------------------------------------------------------------------------------
	//注册模块数据库功能函数
	
	private boolean register_insert_db(system_user_info _system_user_info)
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

	//显示所有注册信息
	private ModelAndView get_register_display_data(system_user_info _system_user_info,String is_success)
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("user_name",_system_user_info.get_user_name());
		mv.addObject("is_success",is_success);
		return mv;
	}
//---------------------------------------------------------------------------------
    //用户信息模块功能函数
    //查询所有
	private List<user_info> get_user_info_list()
	{
		 List<user_info> user_info_list;
		   user_info_dao _user_info_dao=new user_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		   user_info_list=_user_info_dao.select_all();
		   return user_info_list;
	}
}

