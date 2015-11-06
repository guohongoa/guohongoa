package com.viewcontroller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.data.report_info;

@Controller
public class report_request_controller 
{
	
	@RequestMapping("send_report.do")
	public ModelAndView send_task_request(
			@RequestParam(value="report_sender") String report_sender ,
		    @RequestParam(value="report_sender_id") int report_sender_id,
			@RequestParam(value="report_receiver") String report_receiver,
			@RequestParam(value="report_receiver_id") int report_receiver_id,
            @RequestParam(value="report_title")  String report_title,
            @RequestParam(value="report_content") String report_content
			)
	{
		//初始化task_info对象
		report_info _report_info=new report_info();
		_report_info.set_report_sender(report_sender);
		_report_info.set_report_sender_id(report_sender_id);
		_report_info.set_report_receiver(report_receiver);
		_report_info.set_report_receiver_id(report_receiver_id);
		_report_info.set_report_title(report_title);
		_report_info.set_report_content(report_content);
	
		
		//添加系统时间
		   Date date=new Date();
		   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		   String report_addtime=format.format(date);
		   _report_info.set_report_addtime(report_addtime);
		   
		com.dbconnector.report_db_connector.send_report_insert_db(_report_info);
		
		
		//显示数据库列表信息
		List<report_info> report_info_list=com.dbconnector.report_db_connector.get_report_info_list();
		
		 ModelAndView mv=new ModelAndView();
		   mv.addObject("report_info_list",report_info_list);  
		   
		   return mv;
		   
		   	
	}
	
	
}
