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
import com.data.system_user_info;
import com.mybatis.MyBatisConnectionFactory;

import org.apache.log4j.*;
 
@Controller
public class register_controller {
	
	//注册log4j
	final static Logger logger=Logger.getLogger(register_controller.class);
	
	String message = "Welcome to Spring MVC!";
 
	@RequestMapping("main.do")

	public ModelAndView regiseter_request(
			@RequestParam(value="username") String username,
			@RequestParam(value="password") String password
			)
	{
		//将表单响应结果插入数据库
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
	
	
	private boolean register_insert_db(system_user_info _system_user_info)
	{
		system_user_info_dao _system_user_info_dao=new system_user_info_dao(MyBatisConnectionFactory.getSqlSessionFactory());
		
		boolean rs=_system_user_info_dao.insert(_system_user_info);
		return rs;
	}
	
	private ModelAndView get_register_display_data(system_user_info _system_user_info,String is_success)
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("user_name",_system_user_info.get_user_name());
		mv.addObject("is_success",is_success);
		return mv;
	}
}
