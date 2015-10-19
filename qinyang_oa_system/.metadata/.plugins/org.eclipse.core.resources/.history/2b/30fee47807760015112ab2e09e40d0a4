package com.viewcontroller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.mail_info_dao;
import com.dao.task_info_dao;
import com.data.mail_info;
import com.data.task_info;
import com.mybatis.mybatis_connection_factory;

@Controller
public class send_task_controller 
{
	
	@RequestMapping("send_task.do")
	public ModelAndView send_task_request(
			@RequestParam(value="task_sender") String task_sender ,
		    @RequestParam(value="task_sender_id") int task_sender_id,
			@RequestParam(value="task_receiver") String task_receiver,
			@RequestParam(value="task_receiver_id") int task_receiver_id,
            @RequestParam(value="task_title")  String task_title,
            @RequestParam(value="task_content") String task_content
			)
	{
		//初始化task_info对象
		task_info _task_info=new task_info();
		_task_info.set_task_sender(task_sender);
		_task_info.set_task_sender_id(task_sender_id);
		_task_info.set_task_receiver(task_receiver);
		_task_info.set_task_receiver_id(task_receiver_id);
		_task_info.set_task_title(task_title);
		_task_info.set_task_content(task_content);
		
		int task_status=0;//发起任务起点统一将任务状态值，设为0，未完成
		_task_info.set_task_status(task_status);
		
		//添加系统时间
		   Date date=new Date();
		   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		   String task_addtime=format.format(date);
		   _task_info.set_task_addtime(task_addtime);
		   
		send_task_insert_db(_task_info);
		
		
		//显示数据库列表信息
		List<task_info> task_info_list=get_task_info_list();
		
		 ModelAndView mv=new ModelAndView();
		   mv.addObject("task_info_list",task_info_list);  
		   
		   return mv;
		   
		   	
	}
	
	//发起任务时，将任务信息加入数据库
	private boolean send_task_insert_db(task_info _task_info)  
	{
		task_info_dao _task_info_dao=new task_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		boolean rs=_task_info_dao.insert(_task_info);
		return rs;
	}
	
	 private List<task_info> get_task_info_list()
	   {
		   List<task_info> task_info_list;
		   task_info_dao _task_info_dao=new task_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		   task_info_list=_task_info_dao.select_all();
		   return task_info_list;
		   
	   }
}
