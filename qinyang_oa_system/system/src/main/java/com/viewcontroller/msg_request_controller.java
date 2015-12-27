package com.viewcontroller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.data.msg_info;


@Controller
public class msg_request_controller 
{

	@RequestMapping("msg/check_unread_msg.do")
	//查询所有制度条目
	public ModelAndView msg_unread_check_request(
			@RequestParam(value="employee_id")    int employee_id,
			@RequestParam(value="msg_page")       int msg_page      
			)
	{
	  int msg_total_page=com.dbconnector.msg_db_connector.get_msg_total_page(employee_id);
	   ModelAndView mv=new ModelAndView("unread_msg.jsp?department_page="+msg_page+"&msg_total_page="+msg_total_page);//页面重定向
	   
	   //得到查询所有条目的list
	  
	   
	   List<msg_info> msg_info_list=com.dbconnector.msg_db_connector.get_msg_info_list(employee_id,msg_page);
	   mv.addObject("msg_info_list", msg_info_list);
	   return mv;
	}
}
