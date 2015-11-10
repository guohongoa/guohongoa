//五服务接受请求页面
package com.viewcontroller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.data.service_info;
import com.data.service_village_county_info;
import com.data.service_village_info;
import com.data.work_record_info;

	
	@Controller
	public class service_request_controller 
	{
		//接收服务发送表单信息
		@RequestMapping("work/send_service.do")
		public ModelAndView send_service_request(
				@RequestParam(value="service_sender") String service_sender ,
			    @RequestParam(value="service_sender_id") int service_sender_id,
				@RequestParam(value="service_receiver") String service_receiver,
				@RequestParam(value="service_receiver_id") int service_receiver_id,
	            @RequestParam(value="service_type") int service_type,
	            @RequestParam(value="service_begintime") String service_begintime,
	            @RequestParam(value="service_endtime") String service_endtime,
	            @RequestParam(value="service_theme") String service_theme,
	            @RequestParam(value="service_content") String service_content,
	            @RequestParam(value="service_status") int service_status,
	            @RequestParam(value="service_target") String service_target,
	            @RequestParam(value="service_sender_phone") String service_sender_phone,
	            @RequestParam(value="service_village_id") int service_village_id,
	            @RequestParam(value="service_village_name") String service_village_name
				)
		{
			//初始化service_info对象
			service_info _service_info=new service_info();
			_service_info.set_service_sender(service_sender);
			System.out.println(service_sender);
			_service_info.set_service_sender_id(service_sender_id);
			_service_info.set_service_receiver(service_receiver);
			_service_info.set_service_receiver_id(service_receiver_id);
            _service_info.set_service_type(service_type);
            _service_info.set_service_begintime(service_begintime);
            _service_info.set_service_endtime(service_endtime);
            _service_info.set_service_theme(service_theme);
            _service_info.set_service_content(service_content);
            _service_info.set_service_status(service_status);
            _service_info.set_service_target(service_target);
            _service_info.set_service_sender_phone(service_sender_phone);
            _service_info.set_service_village_id(service_village_id);
            _service_info.set_service_village_name(service_village_name);
            
			
			
			//添加系统时间
			   Date date=new Date();
			   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			   String service_addtime=format.format(date);
			   _service_info.set_service_addtime(service_addtime);
			   
			com.dbconnector.service_db_connector.send_service_insert_db(_service_info);
			
			
			//返回插入结果
			
			 ModelAndView mv=new ModelAndView();
			   
			   return mv;
			   
			   	
		}
		
		//五服务根据用户id响应页面
		@RequestMapping("work/service_check_by_user.do")
		public ModelAndView service_check_by_user_request(
				 @RequestParam(value="service_sender_id")  int service_sender_id
				)
		{
	      ModelAndView mv=new ModelAndView("myservice.jsp");
		   
		   //得到查询所有条目的list
		   
		   List<service_info> service_info_list=com.dbconnector.service_db_connector.get_service_info_list_by_service_sender_id(service_sender_id);
		   mv.addObject("service_info_list", service_info_list);
		   return mv;
		}
		
		//五服务页面删除响应
		@RequestMapping("service/service_del.do")
		 public ModelAndView department_del_request(
				 
				 @RequestParam(value="service_msgid")    int service_msgid,
				 @RequestParam(value="service_category") int service_category
				 
				 )
		 {
			ModelAndView mv;
			switch (service_category) 
			   {
			      case 0: mv=new ModelAndView("check_service_deploy_request.jsp");break;//未审批请求，返回未审批页面
			      case 1: mv=new ModelAndView("check_service_feedback_request.jsp");break;//已审批请求，返回已审批页面
			      case 2: mv=new ModelAndView("check_service_getfeedback_request.jsp");break;//未通过请求，返回未通过页面

			      default:mv=new ModelAndView();break;
			    }
			
			
			
			
			com.dbconnector.service_db_connector.del_service_from_id(service_msgid);
			return mv;
		 }
		
		@RequestMapping("service/service_village_add.do")
		public ModelAndView village_add_request(
				@RequestParam(value="service_village_name")        String service_village_name ,     //五服务覆盖村庄名称
			    @RequestParam(value="service_village_county_id")   int    service_village_county_id //五服务村庄所属乡镇id               
				)
		{
			//初始化service_village_info对象
			service_village_info _service_village_info=new service_village_info();
			_service_village_info.set_service_village_name(service_village_name);
			_service_village_info.set_service_village_county_id(service_village_county_id);
			
			//利用乡镇id，查询乡镇name，插入village信息表
			service_village_county_info _service_village_county_info=com.dbconnector.service_db_connector.get_service_village_county_info_by_id(service_village_county_id);
			String county_name=_service_village_county_info.get_service_village_county_name();
			_service_village_info.set_service_village_county_name(county_name);
			
			
			
			//添加系统时间
			   Date date=new Date();
			   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			   String service_village_addtime=format.format(date);
			   _service_village_info.set_service_village_addtime(service_village_addtime);
			   
			  com.dbconnector.service_db_connector.service_village_insert_db(_service_village_info);
			
			
			//返回插入结果
			
			 ModelAndView mv=new ModelAndView();
			   
			   return mv;
			   
			   	
		}
		
		@RequestMapping("service/service_village_check.do")
		public ModelAndView service_village_check_request()
		{
	      ModelAndView mv=new ModelAndView("index.jsp");
		   
		   
		   //根据乡镇id分组，得到全部村庄信息的二维数组
		   List<List<service_village_info>> village_list=com.dbconnector.service_db_connector.get_village_list_by_county();
		   mv.addObject("village_list", village_list);
		   return mv;
		}
		
		
		
		@RequestMapping("service/service_village_county_add.do")
		public ModelAndView county_add_request(
				@RequestParam(value="service_village_county_name")        String service_village_county_name    //五服务覆盖村庄名称  
				)
		{
			//初始化service_village_county_info对象
			service_village_county_info _service_village_county_info=new service_village_county_info();
			_service_village_county_info.set_service_village_county_name(service_village_county_name);
			
			
			//添加系统时间
			   Date date=new Date();
			   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			   String service_village_county_addtime=format.format(date);
			   _service_village_county_info.set_service_village_county_addtime(service_village_county_addtime);
			   
			  com.dbconnector.service_db_connector.service_village_county_inset_db(_service_village_county_info);
			
			
			//返回插入结果
			
			 ModelAndView mv=new ModelAndView();
			   
			   return mv;
			   
			   	
		}
		
		@RequestMapping("service/service_county_check.do")
		public ModelAndView service_county_check_request()
		{
	      ModelAndView mv=new ModelAndView("service_village_add.jsp");
		   
		   //得到乡镇条目
		   
		   List<service_village_county_info> service_village_county_list=com.dbconnector.service_db_connector.get_service_village_county_list();
		   mv.addObject("service_village_county_list", service_village_county_list);
		   return mv;
		}
		
		//根据村庄及服务的类型查询五服务对应具体信息内容
		@RequestMapping("service/check_service_detail_by_service_village_id.do")
		public ModelAndView service_detail_check_request
		(
				@RequestParam(value="service_village_id")  int service_village_id,
				@RequestParam(value="service_type")  int service_type
	    )
		{
			ModelAndView mv=new ModelAndView("service_detail_by_village&type.jsp?service_village_id="+service_village_id+"&service_type="+service_type);
			//System.out.println("output1:"+service_type);
			//System.out.println("output2:"+service_village_id);
			
			
			service_info _service_info=new service_info();
			_service_info.set_service_village_id(service_village_id);
			_service_info.set_service_type(service_type);
			List<service_info> service_info_list=com.dbconnector.service_db_connector.get_service_info_list_by_service_village_id_and_service_type(_service_info);
			mv.addObject("service_info_list",service_info_list);
			return mv;
		}
		
		
		   
	}
	
	
	
	   
	    

