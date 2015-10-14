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
public class RegisterController {
	
	//注册log4j
	final static Logger logger=Logger.getLogger(RegisterController.class);
	
	String message = "Welcome to Spring MVC!";
 
	@RequestMapping("hello.do")

	public ModelAndView showMessage(
			//@RequestParam(value="username") String username,
			@RequestParam(value="password") String password
			)
	{
		ModelAndView mv=new ModelAndView("helloworld");
		//mv.addObject("username", username);
		mv.addObject("password", password);
		
		insert_system_user_info_to_sql();
		
		
		
		return mv;
	}
	
	private void insert_system_user_info_to_sql()
	{
		system_user_info_dao _system_user_info_dao=new system_user_info_dao(MyBatisConnectionFactory.getSqlSessionFactory());
		system_user_info _system_user_info=new system_user_info();
		
		//_system_user_info.set_user_id(11);
		_system_user_info.set_user_name("demo1");
		_system_user_info.set_user_password("123");
		
		_system_user_info_dao.insert(_system_user_info);
		
	}
}
