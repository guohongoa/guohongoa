package com.viewcontroller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.data.system_user_info;
import com.data.user_info;

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
		boolean b_is_success=com.dbconnector.userinfo_db_connector.register_insert_db(_system_user_info);
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
		user_info_list=com.dbconnector.userinfo_db_connector.get_user_info_list();//返回所有用户信息,存储在队列中
		
		 ModelAndView mv=new ModelAndView();
		 mv.addObject("user_info_list", user_info_list);
		 return mv;
		
		
	}
	

	//显示所有注册信息
	public static ModelAndView get_register_display_data(system_user_info _system_user_info,String is_success)
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("user_name",_system_user_info.get_user_name());
		mv.addObject("is_success",is_success);
		return mv;
	}
//-------------------------------------------------------------------------------
	//注册模块数据库功能函数
	
	
}

