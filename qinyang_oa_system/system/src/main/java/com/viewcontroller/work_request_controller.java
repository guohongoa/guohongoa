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
import com.data.relationship_info;
import com.data.work_contact_info;
import com.data.work_info;
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
		  com.dbconnector.work_db_connector.work_insert_db(_work_info);
		
		
	
		
		
		
		 ModelAndView mv=new ModelAndView("redirect:work_all_check.do?employee_id="+work_sender_id+"&work_page=1");
		  
		   
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
		_work_info.set_work_sender("dafa");
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
		int work_type=0;//显示被安排的工作，所以类型为0
		int work_total_page=com.dbconnector.work_db_connector.get_work_all_feedback_total_page_by_owner_id(employee_id,work_type);
		ModelAndView mv=new ModelAndView("work_feedback_list.jsp?work_page="+work_page+"&work_total_page="+work_total_page);//页面重定向
	
	   
	   //得到查询所有条目的list
			   
			   
	   List<work_info> work_info_list=com.dbconnector.work_db_connector.get_all_work_all_feedback_by_employee_id_and_page(employee_id, work_type, work_page);
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
	    int sender_id=employee_id;
		int work_type=0;//安排的工作为0
		
		int work_total_page=com.dbconnector.work_db_connector.get_arrange_all_total_page_by_owner_id(sender_id,work_type);
		ModelAndView mv=new ModelAndView("work_all_arrange.jsp?work_page="+work_page+"&work_total_page="+work_total_page);//页面重定向
	   
		List<work_info> work_info_list=com.dbconnector.work_db_connector.get_work_arrange_all_by_page(sender_id,work_type,work_page);
		mv.addObject("work_info_list", work_info_list);
	
	   
	   return mv;
	}
	
	@RequestMapping("work/work_all_feedback.do")
	public ModelAndView work_all_feedback_request(
			@RequestParam(value="employee_id") int employee_id,
			@RequestParam(value="work_page") int work_page
			)
	{
		
	        
	        int work_type=0;//显示被安排的工作，所以类型为0
			int work_total_page=com.dbconnector.work_db_connector.get_work_all_feedback_total_page_by_owner_id(employee_id,work_type);
			ModelAndView mv=new ModelAndView("work_all_feedback.jsp?work_page="+work_page+"&work_total_page="+work_total_page);//页面重定向
		
		   
		   //得到查询所有条目的list
				   
				   
		   List<work_info> work_info_list=com.dbconnector.work_db_connector.get_all_work_all_feedback_by_employee_id_and_page(employee_id, work_type, work_page);
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
	
	@RequestMapping("work/work_feedback_detail.do")
	public ModelAndView work_feedback_detail_request(
			@RequestParam(value="work_id") int work_id,
			@RequestParam(value="work_page") int work_page
			)
	{
		ModelAndView mv=new ModelAndView("work_feedback_detail.jsp?work_page="+work_page);
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
	
	
	
	
}
