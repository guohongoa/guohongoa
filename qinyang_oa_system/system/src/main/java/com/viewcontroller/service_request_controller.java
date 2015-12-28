//五服务接受请求页面
package com.viewcontroller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.data.employee_info;
import com.data.msg_info;
import com.data.service_group_info;
import com.data.service_info;
import com.data.service_village_county_info;
import com.data.service_village_info;
import com.data.work_contact_info;
import com.data.work_record_info;
import com.data.work_waiting_info;

	
	@Controller
	public class service_request_controller 
	{
		//接收服务发送表单信息
		@RequestMapping("work/send_service.do")
		public ModelAndView send_service_request(
				@RequestParam(value="service_sender") String service_sender ,
			    @RequestParam(value="service_sender_id") int service_sender_id,
				@RequestParam(value="service_receiver_id") int service_receiver_id,
	            @RequestParam(value="service_type") int service_type,
	            @RequestParam(value="service_begintime") String service_begintime,
	            @RequestParam(value="service_endtime") String service_endtime,
	            @RequestParam(value="service_theme") String service_theme,
	            @RequestParam(value="service_content") String service_content,
	            @RequestParam(value="service_status") int service_status,
	            @RequestParam(value="service_target") String service_target,
	            @RequestParam(value="service_sender_phone") String service_sender_phone,
	            @RequestParam(value="service_group_id") int service_group_id
	            //@RequestParam(value="service_village_id") int service_village_id,
	            //@RequestParam(value="service_village_name") String service_village_name
				)
		{
			//初始化service_info对象
			service_info _service_info=new service_info();
			_service_info.set_service_sender(service_sender);
			System.out.println(service_sender);
			_service_info.set_service_sender_id(service_sender_id);
			String service_receiver;
			if(service_receiver_id!=-1)
			{
				employee_info _employee_info=com.dbconnector.management_db_connector.get_employee_info_by_id(service_receiver_id);
				if(_employee_info!=null)
				{
					service_receiver=_employee_info.get_employee_name();
				}
				else
				{
					service_receiver="无";
				}
				
			}
			else
			{
				service_receiver="无";
			}
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
            _service_info.set_service_group_id(service_group_id);
            
            //使用五服务小组id，传入村庄id和村庄名字
            service_group_info _service_group_info=com.dbconnector.management_db_connector.get_service_group_info_by_id(service_group_id);
            int    service_village_id=_service_group_info.get_service_village_id();
            String service_village_name=_service_group_info.get_service_village_name();
            
            _service_info.set_service_village_id(service_village_id);
            _service_info.set_service_village_name(service_village_name);
            
			
			
			//添加系统时间
			   Date date=new Date();
			   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			   String service_addtime=format.format(date);
			   _service_info.set_service_addtime(service_addtime);
			   
			int service_id=com.dbconnector.service_db_connector.send_service_insert_db(_service_info);
			//--------------------------------------------------------------------------
			//插入待审批列表
			  work_waiting_info _work_wating_info=new work_waiting_info();
			  _work_wating_info.set_work_theme(service_theme);
			  _work_wating_info.set_work_category(1);
			  _work_wating_info.set_work_sender_id(service_sender_id);
			  _work_wating_info.set_work_sender(service_sender);
			  _work_wating_info.set_work_receiver_id(service_receiver_id);
			  _work_wating_info.set_work_receiver(service_receiver);
			  _work_wating_info.set_work_content(service_content);
			  _work_wating_info.set_work_addtime(service_addtime);
			  _work_wating_info.set_work_id(service_id);
			  
			  boolean rs=com.dbconnector.work_db_connector.waiting_insert_db(_work_wating_info);
			//--------------------------------------------------
			  msg_info _msg_info=new msg_info();
				 _msg_info.set_msg_owner_id(service_receiver_id);
				 _msg_info.set_msg_owner_name(service_receiver);
				 _msg_info.set_msg_sender_id(service_sender_id);
				 _msg_info.set_msg_sender(service_sender);;
				 int msg_status=0;//未读消息为0
				 _msg_info.set_msg_status(msg_status);
				 _msg_info.set_msg_oid(service_id);
				 _msg_info.set_msg_addtime(service_addtime);
				 _msg_info.set_msg_content(service_content);
				 _msg_info.set_msg_type(2);//五服务为2
				 
				 
				 boolean rs3=com.dbconnector.msg_db_connector.insert_msg(_msg_info);
			
			//返回插入结果
			
			 ModelAndView mv=new ModelAndView("service_check_by_user.do?service_page=1&flag=1&service_sender_id"+service_sender_id);
			   
			   return mv;
			   
			   	
		}
		
		//五服务根据用户id响应页面
		//根据用户id和分页查询
		@RequestMapping("work/service_check_by_user.do")
		public ModelAndView service_check_by_user_request(
				 @RequestParam(value="service_sender_id")  int service_sender_id,
				 @RequestParam(value="service_page")       int service_page,
				 @RequestParam(value="flag")       int flag
				 
				)
		{
	      
		   //得到查询所有条目的list
		   
		   List<service_info> service_info_list=com.dbconnector.service_db_connector.get_service_info_list_by_service_sender_id(service_sender_id,service_page);
		   
		   int service_total_page=com.dbconnector.service_db_connector.get_service_total_page_by_user(service_sender_id);
		   
		   ModelAndView mv=new ModelAndView("myservice.jsp?service_page="+service_page+"&service_total_page="+service_total_page+"&flag="+flag);
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
			   
			  int service_village_county_id=com.dbconnector.service_db_connector.service_village_county_insert_db(_service_village_county_info);
			  System.out.println("ttttttttttttt"+service_village_county_id);
			
			//返回插入结果
			
			 ModelAndView mv=new ModelAndView();
			   
			   return mv;
			   
			   	
		}
		
		@RequestMapping("service/service_county_check.do")
		public ModelAndView service_county_check_request()
		{
	      ModelAndView mv=new ModelAndView("service_village_add.jsp");
		   
		   //得到乡镇条目
		   
		   List<service_village_county_info> service_village_county_list=com.dbconnector.service_db_connector.get_all_service_village_county_list();
		   mv.addObject("service_village_county_list", service_village_county_list);
		   return mv;
		}
		
		//根据村庄及服务的类型查询五服务对应具体信息内容
		@RequestMapping("service/check_service_detail_by_service_village_id.do")
		public ModelAndView service_detail_check_request
		(
				@RequestParam(value="service_village_id")  int service_village_id,
				@RequestParam(value="service_type")        int service_type,
				@RequestParam(value="service_page")        int service_page
	    )
		{
			
			service_info _service_info=new service_info();
			_service_info.set_service_village_id(service_village_id);
			_service_info.set_service_type(service_type);
			
			//使用服务种类、村庄id及页数条件查询对应的服务对象list
			
			List<service_info> service_info_list=com.dbconnector.service_db_connector.get_service_info_list_by_service_village_id_and_service_type(_service_info,service_page);
			
			int service_total_page=com.dbconnector.service_db_connector.get_service_total_page_by_service_village_id_and_service_type(_service_info);
			
			//查询列表显示总页数
			
			ModelAndView mv=new ModelAndView("service_detail_by_village&type.jsp?service_village_id="+service_village_id+"&service_type="+service_type+"&service_page="+service_page+"&service_total_page="+service_total_page);
		    //返回当页查询条目列表		
			mv.addObject("service_info_list",service_info_list);
			return mv;
		}
		
		//根据服务消息id查看单条服务详情,五服务页面索引
			@RequestMapping("service/check_service_info_by_service_msgid.do")
			public ModelAndView service_info_check_request(
					@RequestParam(value="service_msgid")       int service_msgid,
					@RequestParam(value="service_page")        int service_page
					)
			{
				
				service_info _service_info=com.dbconnector.service_db_connector.get_service_info_by_service_msgid(service_msgid);
				int service_group_id=_service_info.get_service_group_id();//获取五服务小组id
				service_group_info _service_group_info=com.dbconnector.management_db_connector.get_service_group_info_by_id(service_group_id);
				
				ModelAndView mv=new ModelAndView("service_detail_by_msg.jsp?service_page="+service_page);
				mv.addObject("service_info", _service_info);
				mv.addObject("service_group_info", _service_group_info);
				
				return mv;
			}
			
			//根据服务消息id查看单条服务详情,工作页面索引
			@RequestMapping("work/check_service_info_by_service_msgid2.do")
			public ModelAndView service_info_check_request2(
					@RequestParam(value="service_msgid")       int service_msgid,
					@RequestParam(value="service_page")        int service_page
					)
			{
				
				service_info _service_info=com.dbconnector.service_db_connector.get_service_info_by_service_msgid(service_msgid);
				ModelAndView mv=new ModelAndView("service_datail.jsp?service_page="+service_page);
				mv.addObject("service_info", _service_info);
				return mv;
			}
			
			//返回个人信息，将上级信息
			@RequestMapping("work/service_send_display.do")
			public ModelAndView service_send_display(
					@RequestParam(value="employee_id")       int employee_id
					)
			{
				ModelAndView mv=new ModelAndView("service_send_display.jsp");
				employee_info _employee_info=com.dbconnector.management_db_connector.get_employee_info_by_id(employee_id);
				int parent_id=_employee_info.get_employee_leader_id();
				System.out.println(parent_id);
				employee_info partent_info=com.dbconnector.management_db_connector.get_employee_info_by_id(parent_id);
				String leader_name="无";
				if(partent_info!=null)
				{
				leader_name=partent_info.get_employee_name();
				}
				//工作联系人列表
				List<work_contact_info> work_contact_list=com.dbconnector.service_db_connector.get_work_contact_list_by_owner_id(employee_id);
				mv.addObject("leader",leader_name);
				mv.addObject("work_contact_list",work_contact_list);
				
				return mv;
			}
		   
	}
	
	
	
	   
	    

