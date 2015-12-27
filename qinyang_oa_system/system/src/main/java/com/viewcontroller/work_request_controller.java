package com.viewcontroller;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.data.department_info;
import com.data.employee_info;
import com.data.msg_info;
import com.data.relationship_info;
import com.data.service_info;
import com.data.work_contact_info;
import com.data.work_info;
import com.data.work_record_info;
import com.data.work_waiting_info;

//工作模块所有服务器响应接口
@Controller
public class work_request_controller 
{
	//安排工作显示
	@RequestMapping("work/work_arrange_display.do")
	public ModelAndView work_arrange_display_request(
			@RequestParam(value="employee_id")     int    employee_id
			)
	{
		ModelAndView mv=new ModelAndView("work_arrange.jsp");
		List<work_contact_info> work_contact_list=com.dbconnector.work_db_connector.get_work_contact_list_by_owner_id(employee_id, 1);
		mv.addObject("work_contact_list",work_contact_list);
		return mv;
	}
	
	@RequestMapping("work/work_report_display.do")
	public ModelAndView work_report_display_request(
			@RequestParam(value="employee_id")     int    employee_id
			)
	{
		ModelAndView mv=new ModelAndView("work_report.jsp");
		List<work_contact_info> work_contact_list=com.dbconnector.work_db_connector.get_work_contact_list_by_owner_id(employee_id, 0);
		mv.addObject("work_contact_list",work_contact_list);
		return mv;
	}
	
	//安排工作发送
	@RequestMapping("work/work_arrange.do")
	public ModelAndView work_arrange_request(
			@RequestParam(value="work_sender_id")     int    work_sender_id,//发送人id
			@RequestParam(value="work_sender")        String work_sender,//发送人id
			@RequestParam(value="work_receiver_id")   int    work_receiver_id,//发送人id
			@RequestParam(value="work_theme")         String work_theme,//工作主题
			@RequestParam(value="work_type")          int    work_type, //工作类型
			@RequestParam(value="work_target")        String work_target,//工作目标
			@RequestParam(value="work_content")        String work_content,//工作内容
			@RequestParam(value="work_begintime")     String work_begintime,//工作开始时间
			@RequestParam(value="work_endtime")       String work_endtime   //工作结束时间
			
			
			
			
			)
	{
		
		
		
		
		
		work_info _work_info=new work_info();
		_work_info.set_work_sender_id(work_sender_id);
		
		_work_info.set_work_sender(work_sender);
		_work_info.set_work_theme(work_theme);
		_work_info.set_work_target(work_target);
		_work_info.set_work_begintime(work_begintime);
		_work_info.set_work_endtime(work_endtime);
		_work_info.set_work_receiver_id(work_receiver_id);
	    _work_info.set_work_content(work_content);
	    
	    int work_status=0;//初始状态未处理为0
	    _work_info.set_work_status(work_status);
	    
	    int work_start=0; //发起消息为0
	    _work_info.set_work_start(work_start);
	    
	    int work_times=1;//主题中消息序列号为1
	    _work_info.set_work_times(work_times);
	    
	    int work_related_id=-1;
	    _work_info.set_work_related_id(work_related_id);
	    
	    int work_category=1;
	    _work_info.set_work_category(work_category);
		String work_receiver;
	    //查询工作任务接受人
		if(work_receiver_id==-1)
		{
			work_receiver="无";
		}
		else
		{
			employee_info _employee_info=com.dbconnector.management_db_connector.get_employee_info_by_id(work_receiver_id);
			if(_employee_info!=null)
			{
				work_receiver=_employee_info.get_employee_name();
			}
			else
			{
				work_receiver="无";
			}
			
		}
		
		_work_info.set_work_receiver(work_receiver);
		//添加系统时间
		   Date date=new Date();
		   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		   String work_addtime=format.format(date);
		   _work_info.set_work_addtime(work_addtime);
		   //插入数据库
		  //relationship_insert_db(_relationship_info);
		  int work_id=com.dbconnector.work_db_connector.work_insert_db(_work_info);
		
		
	
		
		
		
		 ModelAndView mv=new ModelAndView("redirect:work_all_check.do?employee_id="+work_sender_id+"&work_page=1");
		  
		 //插入消息列表
		 msg_info _msg_info=new msg_info();
		 _msg_info.set_msg_owner_id(work_receiver_id);
		 _msg_info.set_msg_owner_name(work_receiver);
		 _msg_info.set_msg_sender_id(work_sender_id);
		 _msg_info.set_msg_sender(work_sender);;
		 int msg_status=0;//未读消息为0
		 _msg_info.set_msg_status(msg_status);
		 _msg_info.set_msg_oid(work_id);
		 _msg_info.set_msg_addtime(work_addtime);
		 _msg_info.set_msg_content(work_content);
		 
		 
		 boolean rs=com.dbconnector.msg_db_connector.insert_msg(_msg_info);
		   
		   return mv;
	}
	
	@RequestMapping("work/work_report.do")
	public ModelAndView work_report_request(
			@RequestParam(value="work_sender_id")     int    work_sender_id,//发送人id
			@RequestParam(value="work_sender")        String work_sender,//发送人id
			@RequestParam(value="work_receiver_id")   int    work_receiver_id,//发送人id
			@RequestParam(value="work_theme")         String work_theme,//工作主题
			@RequestParam(value="work_type")          int    work_type, //工作类型
			@RequestParam(value="work_target")        String work_target,//工作目标
			@RequestParam(value="work_content")        String work_content,//工作内容
			@RequestParam(value="work_begintime")     String work_begintime,//工作开始时间
			@RequestParam(value="work_endtime")       String work_endtime   //工作结束时间
			)
	
	{
        System.out.println(work_receiver_id);
		work_info _work_info=new work_info();
		_work_info.set_work_sender_id(work_sender_id);
		String work_receiver;

		 employee_info _employee_info=com.dbconnector.management_db_connector.get_employee_info_by_id(work_receiver_id);//接受人信息
		
		if(_employee_info!=null)
		{
			work_receiver=_employee_info.get_employee_name();
		}
		else
		{
			work_receiver="无";
		}
		
		_work_info.set_work_sender(work_sender);
		_work_info.set_work_theme(work_theme);
		_work_info.set_work_target(work_target);
		_work_info.set_work_begintime(work_begintime);
		_work_info.set_work_endtime(work_endtime);
		_work_info.set_work_receiver_id(work_receiver_id);
		_work_info.set_work_receiver(work_receiver);
	    _work_info.set_work_content(work_content);
	    _work_info.set_work_type(work_type);
	    
	    int work_status=0;//初始状态未处理为0
	    _work_info.set_work_status(work_status);
	    
	    int work_start=0; //发起消息为0
	    _work_info.set_work_start(work_start);
	    
	    int work_times=1;//主题中消息序列号为1
	    _work_info.set_work_times(work_times);
	    
	    int work_related_id=-1;
	    _work_info.set_work_related_id(work_related_id);
	    
	    int work_category=0;
	    _work_info.set_work_category(work_category);
		
		
		
		//添加系统时间
		   Date date=new Date();
		   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		   String work_addtime=format.format(date);
		   _work_info.set_work_addtime(work_addtime);
		   //插入数据库
		  //relationship_insert_db(_relationship_info);
		  int work_id=com.dbconnector.work_db_connector.work_insert_db(_work_info);
		
		  //工作待审批
		  work_waiting_info _work_wating_info=new work_waiting_info();
		  _work_wating_info.set_work_theme(work_theme);
		  _work_wating_info.set_work_category(0);
		  _work_wating_info.set_work_sender_id(work_sender_id);
		  _work_wating_info.set_work_sender(work_sender);
		  _work_wating_info.set_work_receiver_id(work_receiver_id);
		  _work_wating_info.set_work_receiver(work_receiver);
		  _work_wating_info.set_work_content(work_content);
		  _work_wating_info.set_work_addtime(work_addtime);
		  _work_wating_info.set_work_id(work_id);
		  
		  boolean rs=com.dbconnector.work_db_connector.waiting_insert_db(_work_wating_info);
	
		
		
		
		 ModelAndView mv=new ModelAndView("redirect:work_all_check.do?employee_id="+work_sender_id+"&work_page=1");
		  
		   
		   return mv;
	}
	
	//显示工作反馈列表
	@RequestMapping("work/work_feedback_list.do")
	//查询所有制度条目
	
	public ModelAndView work_feedback_request(
			@RequestParam(value="employee_id") int employee_id,
			@RequestParam(value="work_page")   int work_page
			)
	{
		int work_start=0;//为起始显示
		int work_type=0;//显示被安排的工作，所以类型为0
		int work_total_page=com.dbconnector.work_db_connector.get_work_feedback_list_page_by_owner_id(work_start,employee_id,work_type);
		ModelAndView mv=new ModelAndView("work_feedback_list.jsp?work_page="+work_page+"&work_total_page="+work_total_page);//页面重定向
	
	   
	   //得到查询所有条目的list
			   
			   
	   List<work_info> work_info_list=com.dbconnector.work_db_connector.get_feedback_list_by_employee_id_and_page(work_start, employee_id, work_type, work_page);
	   mv.addObject("work_info_list", work_info_list);
	   return mv;
	}
	
	
		
		@RequestMapping("work/work_pending.do")
	//查询所有制度条目
	
		
    //待审批页面服务器响应
	public ModelAndView work_pending_request(
			@RequestParam(value="employee_id") int employee_id,
			@RequestParam(value="work_page") int work_page
			
			)
	{
		int work_total_page=com.dbconnector.work_db_connector.get_work_waiting_total_page_by_owner_id(employee_id);
		ModelAndView mv=new ModelAndView("work_pending.jsp?work_page="+work_page+"&work_total_page="+work_total_page);//页面重定向
		
	   
	   //得到查询所有条目的list
	   
	   List<work_waiting_info> work_waiting_list=com.dbconnector.work_db_connector.get_work_waiting_inf_by_work_receiver_id_and_page(employee_id,work_page);
	   mv.addObject("work_waiting_list", work_waiting_list);
	   return mv;
	}
	
	@RequestMapping("work/work_all_check.do")
	//查询所有工作条目
	
	public ModelAndView work_all_request(
			@RequestParam(value="employee_id") int employee_id,
			@RequestParam(value="work_page")   int work_page 
			)
	{
		int work_status=0;
		int work_total_page=com.dbconnector.work_db_connector.get_work_all_total_page_by_owner_id(employee_id,work_status);
		ModelAndView mv=new ModelAndView("work_all.jsp?work_page="+work_page+"&work_total_page="+work_total_page);

		List<work_info> work_info_list=com.dbconnector.work_db_connector.get_all_work_list_by_employee_id_and_page(employee_id, work_status, work_page);
	    mv.addObject("work_info_list", work_info_list);
	   
	   return mv;
	}
	
	@RequestMapping("work/work_all_arrange.do")
	public ModelAndView work_all_arrange_request(
			@RequestParam(value="employee_id") int employee_id,
			@RequestParam(value="work_page") int work_page
			
			)
	{
		int work_start=0;//起始信息
		int work_category=1;
	    int sender_id=employee_id;
		int work_type=0;//安排的工作为0
		
		int work_total_page=com.dbconnector.work_db_connector.get_arrange_all_total_page_by_owner_id(work_category,work_start,sender_id,work_type);
		ModelAndView mv=new ModelAndView("work_all_arrange.jsp?work_page="+work_page+"&work_total_page="+work_total_page);//页面重定向
	   
		List<work_info> work_info_list=com.dbconnector.work_db_connector.get_work_arrange_all_by_page(work_category,work_start,sender_id,work_type,work_page);
		mv.addObject("work_info_list", work_info_list);
	
	   
	   return mv;
	}
	//显示所有发出的反馈
	@RequestMapping("work/work_all_feedback.do")
	public ModelAndView work_all_feedback_request(
			@RequestParam(value="employee_id") int employee_id,
			@RequestParam(value="work_page") int work_page
			)
	{
		
	        
	        int work_type=0;//显示被安排的工作，所以类型为0
	        int work_start=1;//非开始
			int work_total_page=com.dbconnector.work_db_connector.get_work_all_feedback_page_by_owner_id(work_start, employee_id, work_type);
					
			ModelAndView mv=new ModelAndView("work_all_feedback.jsp?work_page="+work_page+"&work_total_page="+work_total_page);//页面重定向
		
		   
		   //得到查询所有条目的list
				   
				   
		   List<work_info> work_info_list=com.dbconnector.work_db_connector.get_all_feedback_by_employee_id_and_page(work_start, employee_id, work_type, work_page);
		   mv.addObject("work_info_list", work_info_list);
		   return mv;
	   
	}
	
	@RequestMapping("work/work_all_report.do")
	public ModelAndView work_all_report_request(
			@RequestParam(value="employee_id") int employee_id,
			@RequestParam(value="work_page")   int work_page
			)
	{
		int sender_id=employee_id;
		int work_type=1;//汇报的工作为1
		int work_total_page=com.dbconnector.work_db_connector.get_work_all_report_total_page_by_owner_id(employee_id,work_type);
		ModelAndView mv=new ModelAndView("work_all_report.jsp?work_page="+work_page+"&work_total_page="+work_total_page);//页面重定向
		 
			List<work_info> work_info_list=com.dbconnector.work_db_connector.get_work_all_report_by_sender_id_and_type(sender_id,work_type,work_page);
			mv.addObject("work_info_list", work_info_list);
	
	   
	   return mv;
	}
	
	@RequestMapping("work/work_all_approved.do")
	public ModelAndView work_all_approved_request(
			@RequestParam(value="employee_id") int employee_id,
			@RequestParam(value="work_page")   int work_page   
			)
	{
		int receiver_id=employee_id;
		int work_type=1;//已审批的工作为被汇报的工作，类型为
		int work_status=1;
		int work_total_page=com.dbconnector.work_db_connector.get_work_all_approved_total_page_by_owner_id(employee_id,work_type,work_status);
		ModelAndView mv=new ModelAndView("work_all_approved.jsp?work_page="+work_page+"&work_total_page="+work_total_page);//页面重定向
		
		List<work_info> work_info_list=com.dbconnector.work_db_connector.get_work_info_by_approved_and_page(receiver_id,work_type,work_status,work_page);
	    mv.addObject("work_info_list", work_info_list);
	   
	   return mv;
	}
	
	@RequestMapping("work/work_feedback_check.do")
	public ModelAndView work_feedback_check_request(
			@RequestParam(value="work_id") int work_id,
			@RequestParam(value="work_page") int work_page
			)
	{
		ModelAndView mv=new ModelAndView("work_feedback_check.jsp?work_page="+work_page);
		work_info _work_info=com.dbconnector.work_db_connector.get_work_info_by_work_id(work_id);
		mv.addObject("work_info", _work_info);
		return mv;
	}
	
	@RequestMapping("work/work_feedback.do")
	public ModelAndView work_feedback_input_request(
			@RequestParam(value="work_id") int work_id,
			@RequestParam(value="work_page") int work_page
			)
	{
		ModelAndView mv=new ModelAndView("work_feedback.jsp?work_page="+work_page);
		work_info _work_info=com.dbconnector.work_db_connector.get_work_info_by_work_id(work_id);
		mv.addObject("work_info", _work_info);
		return mv;
	}
	//
	@RequestMapping("work/feedback_commit.do")
	public ModelAndView work_feedback_commit_request(
			@RequestParam(value="work_sender_id")     int    work_sender_id,//发送人id
			@RequestParam(value="work_sender")        String work_sender,//发送人id
			@RequestParam(value="work_receiver_id")   int    work_receiver_id,//发送人id
			@RequestParam(value="work_receiver")      String work_receiver,//发送人id
			@RequestParam(value="work_theme")         String work_theme,//工作主题
			@RequestParam(value="work_type")          int    work_type, //工作类型
			@RequestParam(value="work_target")        String work_target,//工作目标
			@RequestParam(value="work_content")        String work_content,//工作内容
			@RequestParam(value="work_begintime")     String work_begintime,//工作开始时间
			@RequestParam(value="work_endtime")       String work_endtime,   //工作结束时间
			@RequestParam(value="work_start")         int work_start,       //是否为起始信息
			@RequestParam(value="work_related_id")    int work_related_id,   //关联工作信息id
			@RequestParam(value="work_times")         int work_times,        //关联主题序号
			@RequestParam(value="work_percentage")    int work_percentage    //完成进度百分比
			)
	{
	   ModelAndView mv=new ModelAndView("redirect:work_all_check.do?employee_id="+work_sender_id+"&work_page=1");

		work_info _work_info=new work_info();
		_work_info.set_work_sender_id(work_sender_id);
		
		_work_info.set_work_sender(work_sender);
		_work_info.set_work_theme(work_theme);
		_work_info.set_work_target(work_target);
		_work_info.set_work_begintime(work_begintime);
		_work_info.set_work_endtime(work_endtime);
		_work_info.set_work_receiver_id(work_receiver_id);
		_work_info.set_work_receiver(work_receiver);
		_work_info.set_work_related_id(work_related_id);
	    _work_info.set_work_content(work_content);
	    _work_info.set_work_start(work_start);
	    _work_info.set_work_times(work_times);
		
		_work_info.set_work_receiver(work_receiver);
		_work_info.set_work_percentage(work_percentage);
		
		int work_category=0;//向上级发出反馈工作，所以接受者为发送者上级
		_work_info.set_work_category(work_category);
		//添加系统时间
		   Date date=new Date();
		   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		   String work_addtime=format.format(date);
		   _work_info.set_work_addtime(work_addtime);
		   //插入数据库
		  //relationship_insert_db(_relationship_info);
		  com.dbconnector.work_db_connector.work_insert_db(_work_info);
	     return mv;
	}
	
	//工作安排详情
	@RequestMapping("work/work_arrange_detail.do")
	public ModelAndView work_arrange_detail_request(
			@RequestParam(value="work_id") int work_id,
			@RequestParam(value="work_page") int work_page
			)
	{
		ModelAndView mv=new ModelAndView("work_arrange_detail.jsp?work_page="+work_page);
		work_info _work_info=com.dbconnector.work_db_connector.get_work_info_by_work_id(work_id);
		employee_info receiver_info=com.dbconnector.management_db_connector.get_employee_info_by_id(_work_info.get_work_receiver_id());
		mv.addObject("receiver_phone",receiver_info.get_employee_phone());
		mv.addObject("work_info", _work_info);
		return mv;
	}
	
	@RequestMapping("work/work_report_detail.do")
	public ModelAndView work_report_detail_request(
			@RequestParam(value="work_id") int work_id,
			@RequestParam(value="work_page") int work_page
			)
	{
		ModelAndView mv=new ModelAndView("work_report_detail.jsp?work_page="+work_page);
		work_info _work_info=com.dbconnector.work_db_connector.get_work_info_by_work_id(work_id);
		employee_info sender_info=com.dbconnector.management_db_connector.get_employee_info_by_id(_work_info.get_work_sender_id());
		mv.addObject("sender_phone",sender_info.get_employee_phone());
		mv.addObject("work_info", _work_info);
		return mv;
	}
	
	@RequestMapping("work/work_feedback_detail.do")
	public ModelAndView work_feedback_detail_request(
			@RequestParam(value="work_id") int work_id,
			@RequestParam(value="work_page") int work_page
			)
	{
		
		ModelAndView mv=new ModelAndView("work_feedback_detail.jsp?work_page="+work_page);
		work_info _work_info=com.dbconnector.work_db_connector.get_work_info_by_work_id(work_id);
		work_info theme_work_info=com.dbconnector.work_db_connector.get_work_info_by_work_id(_work_info.get_work_related_id()); 
		employee_info sender_info=com.dbconnector.management_db_connector.get_employee_info_by_id(_work_info.get_work_sender_id());
		mv.addObject("sender_phone",sender_info.get_employee_phone());
		mv.addObject("theme_work_info",theme_work_info); //安排工作内容
		mv.addObject("work_info", _work_info);
		return mv;
	}
	
	@RequestMapping("work/work_pending_detail.do")
	public ModelAndView work_pending_detail_request(
			@RequestParam(value="work_id")     int  work_id,
			@RequestParam(value="work_page")   int  work_page,
			@RequestParam(value="waiting_id")  int waiting_id
			)
	{
		ModelAndView mv=new ModelAndView("work_pending_detail.jsp?work_page="+work_page+"&waiting_id"+waiting_id);
		work_info _work_info=com.dbconnector.work_db_connector.get_work_info_by_work_id(work_id);
		employee_info sender_info=com.dbconnector.management_db_connector.get_employee_info_by_id(_work_info.get_work_sender_id());
		mv.addObject("sender_phone",sender_info.get_employee_phone());
		mv.addObject("work_info", _work_info);
		return mv;
	}
	
	@RequestMapping("work/record_pending_detail.do")
	public ModelAndView record_pending_detail_request(
			@RequestParam(value="work_id")     int  work_id,
			@RequestParam(value="work_page")   int  work_page,
			@RequestParam(value="waiting_id")  int waiting_id
			)
	{
		ModelAndView mv=new ModelAndView("record_pending_detail.jsp?work_page="+work_page+"&waiting_id"+waiting_id);
		work_record_info _work_record_info=com.dbconnector.record_db_connector.get_work_record_info_by_work_record_id(work_id);
		mv.addObject("work_record_info", _work_record_info);
		return mv;
	}
	
	@RequestMapping("work/service_pending_detail.do")
	public ModelAndView service_pending_detail_request(
			@RequestParam(value="work_id")     int  work_id,
			@RequestParam(value="work_page")   int  work_page,
			@RequestParam(value="waiting_id")  int  waiting_id
			
			)
	{
		ModelAndView mv=new ModelAndView("service_pending_detail.jsp?work_page="+work_page+"&waiting_id"+waiting_id);
		service_info _service_info=com.dbconnector.service_db_connector.get_service_info_by_service_msgid(work_id);
		mv.addObject("service_info",  _service_info);
		return mv;
	}
	
	//工作审批通过
	@RequestMapping("work/work_pending_agree.do")
	public ModelAndView work_pending_commit_request(
			@RequestParam(value="waiting_id")  int waiting_id,
			@RequestParam(value="work_comment") String work_comment,
			@RequestParam(value="employee_id")  int employee_id,
			@RequestParam(value="work_page")    int work_page,
			@RequestParam(value="work_id")      int work_id
			
			)
	{
		System.out.println(employee_id);
		System.out.println(work_page);
		ModelAndView mv=new ModelAndView("redirect:work_pending.do?employee_id="+employee_id+"&work_page="+work_page);
		work_waiting_info _waiting_info=new work_waiting_info();
		
	   System.out.println("waiting_id:"+waiting_id);
		
		_waiting_info.set_waiting_id(waiting_id);
		int work_status=1;
		_waiting_info.set_work_status(work_status);
		_waiting_info.set_work_comment(work_comment);
		
		work_info _work_info=new work_info();
		_work_info.set_work_id(work_id);
		_work_info.set_work_comment(work_comment);
		_work_info.set_work_status(work_status);
		boolean rs2=com.dbconnector.work_db_connector.update_work_status(_work_info);
		
		boolean rs=com.dbconnector.work_db_connector.update_waiting_status(_waiting_info);
		return mv;
	}
	

	//工作审批未通过
	@RequestMapping("work/work_pending_disagree.do")
	public ModelAndView work_pending_disagree_request(
			@RequestParam(value="waiting_id")  int waiting_id,
			@RequestParam(value="work_comment") String work_comment,
			@RequestParam(value="employee_id")  int employee_id,
			@RequestParam(value="work_page")    int work_page,
			@RequestParam(value="work_id")      int work_id
			)
	{
		ModelAndView mv=new ModelAndView("redirect:work_pending.do?employee_id="+employee_id+"&work_page="+work_page);
		work_waiting_info _waiting_info=new work_waiting_info();
		
		_waiting_info.set_waiting_id(waiting_id);
		int work_status=2;
		_waiting_info.set_work_status(work_status);
		_waiting_info.set_work_comment(work_comment);
		
		boolean rs=com.dbconnector.work_db_connector.update_waiting_status(_waiting_info);
		
		work_info _work_info=new work_info();
		_work_info.set_work_id(work_id);
		_work_info.set_work_comment(work_comment);
		_work_info.set_work_status(work_status);
		boolean rs2=com.dbconnector.work_db_connector.update_work_status(_work_info);
		return mv;
	}
	
	//工作审批通过
		@RequestMapping("work/record_pending_agree.do")
		public ModelAndView record_pending_commit_request(
				@RequestParam(value="waiting_id")  int waiting_id,
				@RequestParam(value="work_comment") String work_comment,
				@RequestParam(value="employee_id")  int employee_id,
				@RequestParam(value="work_page")    int work_page,
				@RequestParam(value="work_id")      int work_id
				
				)
		{
			System.out.println(employee_id);
			System.out.println(work_page);
			ModelAndView mv=new ModelAndView("redirect:work_pending.do?employee_id="+employee_id+"&work_page="+work_page);
			work_waiting_info _waiting_info=new work_waiting_info();
			
		   System.out.println("waiting_id:"+waiting_id);
			
			_waiting_info.set_waiting_id(waiting_id);
			int work_status=1;
			_waiting_info.set_work_status(work_status);
			_waiting_info.set_work_comment(work_comment);
			boolean rs=com.dbconnector.work_db_connector.update_waiting_status(_waiting_info);
			
			work_record_info _work_record_info=new work_record_info();
			_work_record_info.set_work_record_id(work_id);
			_work_record_info.set_work_record_comment(work_comment);
			_work_record_info.set_work_record_status(work_status);
			boolean rs2=com.dbconnector.record_db_connector.update_record_status(_work_record_info);
			
			
			return mv;
		}
		

		//工作审批未通过
		@RequestMapping("work/record_pending_disagree.do")
		public ModelAndView work_record_disagree_request(
				@RequestParam(value="waiting_id")  int waiting_id,
				@RequestParam(value="work_comment") String work_comment,
				@RequestParam(value="employee_id")  int employee_id,
				@RequestParam(value="work_page")    int work_page,
				@RequestParam(value="work_id")      int work_id
				)
		{
			ModelAndView mv=new ModelAndView("redirect:work_pending.do?employee_id="+employee_id+"&work_page="+work_page);
			work_waiting_info _waiting_info=new work_waiting_info();
			
			_waiting_info.set_waiting_id(waiting_id);
			int work_status=2;
			_waiting_info.set_work_status(work_status);
			_waiting_info.set_work_comment(work_comment);
			
			boolean rs=com.dbconnector.work_db_connector.update_waiting_status(_waiting_info);
			
			work_record_info _work_record_info=new work_record_info();
			_work_record_info.set_work_record_id(work_id);
			_work_record_info.set_work_record_comment(work_comment);
			_work_record_info.set_work_record_status(work_status);
			boolean rs2=com.dbconnector.record_db_connector.update_record_status(_work_record_info);
			return mv;
		}
		
		//工作审批通过
		@RequestMapping("work/service_pending_agree.do")
		public ModelAndView service_pending_commit_request(
				@RequestParam(value="waiting_id")  int waiting_id,
				@RequestParam(value="work_comment") String work_comment,
				@RequestParam(value="employee_id")  int employee_id,
				@RequestParam(value="work_page")    int work_page,
				@RequestParam(value="work_id")      int work_id
				
				)
		{
			System.out.println(employee_id);
			System.out.println(work_page);
			ModelAndView mv=new ModelAndView("redirect:work_pending.do?employee_id="+employee_id+"&work_page="+work_page);
			work_waiting_info _waiting_info=new work_waiting_info();
			
		   System.out.println("waiting_id:"+waiting_id);
			
			_waiting_info.set_waiting_id(waiting_id);
			int work_status=1;
			_waiting_info.set_work_status(work_status);
			_waiting_info.set_work_comment(work_comment);
			
			service_info _service_info=new service_info();
			_service_info.set_service_msgid(work_id);
			_service_info.set_service_comment(work_comment);
			_service_info.set_service_status(work_status);

			boolean rs2=com.dbconnector.service_db_connector.update_service_status(_service_info);
			
			boolean rs=com.dbconnector.work_db_connector.update_waiting_status(_waiting_info);
			return mv;
		}
		

		//工作审批未通过
		@RequestMapping("work/service_pending_disagree.do")
		public ModelAndView service_pending_disagree_request(
				@RequestParam(value="waiting_id")  int waiting_id,
				@RequestParam(value="work_comment") String work_comment,
				@RequestParam(value="employee_id")  int employee_id,
				@RequestParam(value="work_page")    int work_page,
				@RequestParam(value="work_id")      int work_id
				)
		{
			ModelAndView mv=new ModelAndView("redirect:work_pending.do?employee_id="+employee_id+"&work_page="+work_page);
			work_waiting_info _waiting_info=new work_waiting_info();
			
			_waiting_info.set_waiting_id(waiting_id);
			int work_status=2;
			_waiting_info.set_work_status(work_status);
			_waiting_info.set_work_comment(work_comment);
			
			boolean rs=com.dbconnector.work_db_connector.update_waiting_status(_waiting_info);
			
			service_info _service_info=new service_info();
			_service_info.set_service_msgid(work_id);
			_service_info.set_service_comment(work_comment);
			_service_info.set_service_status(work_status);
			boolean rs2=com.dbconnector.service_db_connector.update_service_status(_service_info);
			return mv;
		}
	
	
}
