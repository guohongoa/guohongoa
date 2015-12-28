package com.viewcontroller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.data.msg_info;
import com.data.work_waiting_info;


@Controller
public class msg_request_controller 
{

	@RequestMapping("msg/check_unread_msg.do")
	//查询所有未读消息条目
	public ModelAndView msg_unread_check_request(
			@RequestParam(value="employee_id")    int employee_id,
			@RequestParam(value="msg_page")       int msg_page      
			)
	{
	  int msg_status=0;//查询未读消息为0
	  int msg_total_page=com.dbconnector.msg_db_connector.get_msg_total_page(employee_id,msg_status);
	   ModelAndView mv=new ModelAndView("unread_msg.jsp?msg_page="+msg_page+"&msg_total_page="+msg_total_page);//页面重定向
	   
	   //得到查询所有条目的list
	  
	   
	   List<msg_info> msg_info_list=com.dbconnector.msg_db_connector.get_msg_info_list(employee_id,msg_status,msg_page);
	   mv.addObject("msg_info_list", msg_info_list);
	   return mv;
	}
	
	
		
		@RequestMapping("msg/check_read_msg.do")
	//查询所有已读消息条目
	public ModelAndView msg_read_check_request(
			@RequestParam(value="employee_id")    int employee_id,
			@RequestParam(value="msg_page")       int msg_page      
			)
	{
	  int msg_status=1;//查询未读消息为0
	  int msg_total_page=com.dbconnector.msg_db_connector.get_msg_total_page(employee_id,msg_status);
	   ModelAndView mv=new ModelAndView("read_msg.jsp?msg_page="+msg_page+"&msg_total_page="+msg_total_page);//页面重定向
	   
	   //得到查询所有条目的list
	  
	   
	   List<msg_info> msg_info_list=com.dbconnector.msg_db_connector.get_msg_info_list(employee_id,msg_status,msg_page);
	   mv.addObject("msg_info_list", msg_info_list);
	   return mv;
	}
	
	//点击查看，将该条消息设为已读，并跳到对应页面
	@RequestMapping("msg/msg_read.do")
	public ModelAndView msg_read_request(
			@RequestParam(value="msg_id")        int msg_id,    //消息id
			@RequestParam(value="msg_type")      int msg_type,  //消息类型
			@RequestParam(value="msg_oid")       int msg_oid    //消息原始id
			)
	{
		ModelAndView mv;
		int msg_status=1;
		msg_info _msg_info=new msg_info();
		_msg_info.set_msg_id(msg_id);
		_msg_info.set_msg_status(msg_status);
		boolean rs=com.dbconnector.msg_db_connector.update_msg_status(_msg_info);
		
		if(msg_type==0)
		{
			//工作安排为0
			mv=new ModelAndView("../work/work_feedback_check.do?work_page=1&work_id="+msg_oid);
		}
		else if(msg_type==1)
		{
			//工作汇报为1
			work_waiting_info _waiting_info=com.dbconnector.work_db_connector.get_work_waiting_info_by_work_id(msg_oid);
			int waiting_id=_waiting_info.get_waiting_id();
			mv=new ModelAndView("../work/work_pending_detail.do?work_page=1&work_id="+msg_oid+"&waiting_id="+waiting_id);
		}
		else if(msg_type==2)
		{
			//五服务待审批为2
			work_waiting_info _waiting_info=com.dbconnector.work_db_connector.get_work_waiting_info_by_work_id(msg_oid);
			int waiting_id=_waiting_info.get_waiting_id();
			mv=new ModelAndView("../work/service_pending_detail.do?work_page=1&work_id="+msg_oid+"&waiting_id="+waiting_id);
		}
		else if(msg_type==3)
		{
			//台账待审批为3
			work_waiting_info _waiting_info=com.dbconnector.work_db_connector.get_work_waiting_info_by_work_id(msg_oid);
			int waiting_id=_waiting_info.get_waiting_id();
			mv=new ModelAndView("../work/record_pending_detail.do?work_page=1&work_id="+msg_oid+"&waiting_id="+waiting_id);
		}
		else if(msg_type==4)
		{
			//工作进度反馈为4
			mv=new ModelAndView("../work/work_arrange_detail.do?work_page=1&work_id="+msg_oid);
		}
		else if(msg_type==5)
		{
			//工作审批反馈为5
			mv=new ModelAndView("../work/work_report_detail.do?work_page=1&work_id="+msg_oid);
		}
		else if(msg_type==6)
		{
			//五服务审批反馈为6
			mv=new ModelAndView("../work/check_service_info_by_service_msgid2.do?service_page=1&service_msgid="+msg_oid);
		}
		else if(msg_type==7)
		{
			//台账审批反馈为7
			mv=new ModelAndView("../work/check_record_info_by_work_record_id.do?record_page=1&flag=1&work_record_id="+msg_oid);
		}	
		else
		{
			mv=new ModelAndView("");
		}
		return mv;
	}
}
