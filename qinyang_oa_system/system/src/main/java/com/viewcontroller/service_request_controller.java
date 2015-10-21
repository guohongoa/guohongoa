package com.viewcontroller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.service_info_dao;
import com.data.service_info;
import com.mybatis.mybatis_connection_factory;

	
	@Controller
	public class service_request_controller 
	{
		//接收服务发送表单信息
		@RequestMapping("send_service.do")
		public ModelAndView send_task_request(
				@RequestParam(value="service_sender") String service_sender ,
			    @RequestParam(value="service_sender_id") int service_sender_id,
				@RequestParam(value="service_receiver") String service_receiver,
				@RequestParam(value="service_receiver_id") int service_receiver_id,
	            @RequestParam(value="service_category")  int service_category,
	            @RequestParam(value="service_type") int service_type,
	            @RequestParam(value="service_begintime") String service_begintime,
	            @RequestParam(value="service_endtime") String service_endtime,
	            @RequestParam(value="service_theme") String service_theme,
	            @RequestParam(value="service_content") String service_content
				)
		{
			//初始化service_info对象
			service_info _service_info=new service_info();
			_service_info.set_service_sender(service_sender);
			_service_info.set_service_sender_id(service_sender_id);
			_service_info.set_service_receiver(service_receiver);
			_service_info.set_service_receiver_id(service_receiver_id);
            _service_info.set_service_category(service_category);
            _service_info.set_service_type(service_type);
            _service_info.set_service_begintime(service_begintime);
            _service_info.set_service_endtime(service_endtime);
            _service_info.set_service_theme(service_theme);
            _service_info.set_service_content(service_content);
            
			
			
			//添加系统时间
			   Date date=new Date();
			   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			   String service_addtime=format.format(date);
			   _service_info.set_service_addtime(service_addtime);
			   
			send_service_insert_db(_service_info);
			
			
			//显示数据库列表信息
			List<service_info> service_info_list=get_service_info_list();
			
			 ModelAndView mv=new ModelAndView();
			   mv.addObject("service_info_list",service_info_list);  
			   
			   return mv;
			   
			   	
		}
		
		//发起任务时，将任务信息加入数据库
		private boolean send_service_insert_db(service_info _service_info)  
		{
			service_info_dao _service_info_dao=new service_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			
			boolean rs=_service_info_dao.insert(_service_info);
			return rs;
		}
		
		 private List<service_info> get_service_info_list()
		   {
			   List<service_info> service_info_list;
			   service_info_dao _service_info_dao=new service_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			   service_info_list=_service_info_dao.select_all();
			   return service_info_list;
			   
		   }
	}
