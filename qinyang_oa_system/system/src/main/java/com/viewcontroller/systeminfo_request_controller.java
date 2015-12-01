package com.viewcontroller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.dao.system_user_info_dao;
import com.data.employee_info;
import com.data.system_user_info;
import com.mybatis.mybatis_connection_factory;

//登陆页请求，验证密码是否正确
@Controller
@SessionAttributes("system_user_info")

public class systeminfo_request_controller 
{
/*
	@RequestMapping("login.do")
  public ModelAndView login_request(
		  @RequestParam(value="user_name") String user_name,
			@RequestParam(value="user_password") String user_password
		  )
  {
		
	  system_user_info db_user_info=get_system_user_inf_by_user_name(user_name);
	  
	  ModelAndView mv=new ModelAndView("login/login_process.jsp");
	  
	  
	  if(db_user_info!=null)
	  {
	  String db_user_password=db_user_info.get_user_password();
	  int db_user_id=db_user_info.get_user_id();
	  
	  
	  //比较输入密码用数据库中密码是否一致
	  if(db_user_password.equals(user_password))
	  {
		  mv.addObject("status", 0);//"登陆成功"
		  
		  //登陆成功后设置用户名session
		  system_user_info _system_user_info=db_user_info;
		  mv.addObject("system_user_info", _system_user_info);
	  }
	  
	  
	  else
	  {
		  mv.addObject("status", 2);//"用户名或密码错误"
	  }
	  }
	  else
	  {
		  mv.addObject("status", 1);//"用户名不存在"
	  }
	  
	  return mv;
  }
  
  */
	
	//用户登陆响应
	@RequestMapping("login.do")
	  public ModelAndView login_request(
			  @RequestParam(value="employee_phone")    String employee_phone,
			  @RequestParam(value="employee_password") String employee_password
			  )
	  {
			
		  //system_user_info db_user_info=get_system_user_inf_by_user_name(user_name);
		employee_info _employee_info=com.dbconnector.userinfo_db_connector.get_employee_info_by_employee_phone(employee_phone);
		  
		  ModelAndView mv=new ModelAndView("login/login_process.jsp");
		  
		  
		  if(_employee_info!=null)
		  {
		  String employee_password_in_db=_employee_info.get_employee_password();  //数据库查询用户密码
		  int employee_id_in_db=_employee_info.get_employee_id();                 //数据库查询用户id
		  
		  String employee_password_in_input=employee_password;   //用户输入密码
		  
		  //比较输入密码用数据库中密码是否一致
		  if(employee_password_in_db.equals(employee_password_in_input))
		  {
			  mv.addObject("status", 0);//"登陆成功"
			  
			  //登陆成功后设置用户名session
			  mv.addObject("employee_info", _employee_info);
		  }
		  
		  
		  else
		  {
			  mv.addObject("status", 2);//"用户名或密码错误"
		  }
		  }
		  else
		  {
			  mv.addObject("status", 1);//"用户名不存在"
		  }
		  
		  return mv;
	  }
	
	//用户登出
	@RequestMapping("logout.do")
	public ModelAndView logout_request()
	{
		ModelAndView mv=new ModelAndView("logout/index.jsp");
		return mv;
	}
	
	@RequestMapping("change_password.do")
	public ModelAndView change_password_request(
			 @RequestParam(value="employee_id")         int    employee_id,     //用户id
			 @RequestParam(value="employee_password")   String employee_password,//现在的密码
			 @RequestParam(value="new_password")        String new_password,    //新密码
			 @RequestParam(value="confirm_password")    String confirm_password //第二遍输入的确认密码
			)
	{
		ModelAndView mv=new ModelAndView();
		
		boolean is_success=com.dbconnector.userinfo_db_connector.check_passsword_correct(employee_id, employee_password);
		System.out.println(is_success);
		
		return mv;
	}
  
  /*
  //根据用户名从数据库返回system_user_info的对象
  private system_user_info get_system_user_inf_by_user_name(String user_name)
  {
	  system_user_info _system_user_info=new system_user_info();
	  system_user_info_dao _system_user_info_dao=new system_user_info_dao(mybatis_connection_factory.getSqlSessionFactory());
	  _system_user_info=_system_user_info_dao.select_by_user_name(user_name);
	  return _system_user_info;
  }
  
  //----------------------------------------------------------------------------------------
  */
 
  
}
