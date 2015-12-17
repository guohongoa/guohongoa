package com.viewcontroller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.data.employee_info;
import com.data.service_info;
import com.data.work_record_info;
import com.data.work_waiting_info;

//台账模块请求响应模块类
@Controller
public class record_request_controller 
{
		//接收台账发送表单信息
		@RequestMapping("work/record_add.do")
		public ModelAndView record_add_request(
				@RequestParam(value="work_record_creator")    String    work_record_creator ,    //台账建帐人
				
				@RequestParam(value="work_record_creatorid")   int       work_record_creatorid,  //台账建帐人id
			    @RequestParam(value="work_record_position")   String    work_record_position,    //台账创建人职务
				@RequestParam(value="work_record_department") String    work_record_department,  //台账创建人部门
				@RequestParam(value="work_record_leader")     String    work_record_leader,      //台账创建人上级联系人
	            @RequestParam(value="work_record_communist")  String    work_record_communist,   //党员联系人姓名
	            @RequestParam(value="work_record_date")       String    work_record_date,        //建帐日期
	            @RequestParam(value="work_record_plan")       String    work_record_plan,        //台账工作计划
	            @RequestParam(value="work_record_effect")     String    work_record_effect,      //台账落实情况
	            
	            @RequestParam(value="work_record_theme")     String     work_record_theme,
	            @RequestParam(value="work_record_leader_id") int     work_record_leader_id
				)
		{
			//初始化work_record_info对象
			work_record_info _work_record_info=new work_record_info();
			_work_record_info.set_work_record_creator(work_record_creator);
			_work_record_info.set_work_record_creatorid(work_record_creatorid);
			_work_record_info.set_work_record_position(work_record_position);
			_work_record_info.set_work_record_department(work_record_department);
			_work_record_info.set_work_record_leader(work_record_leader);
			_work_record_info.set_work_record_communist(work_record_communist);
			_work_record_info.set_work_record_date(work_record_date);
			_work_record_info.set_work_record_plan(work_record_plan);
			_work_record_info.set_work_record_effect(work_record_effect);
			_work_record_info.set_work_record_theme(work_record_theme);
			_work_record_info.set_work_record_leader_id(work_record_leader_id);
            
			
			
			//添加系统时间
			   Date date=new Date();
			   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			   String record_addtime=format.format(date);
			   _work_record_info.set_work_record_addtime(record_addtime);
			   
			   int record_id=com.dbconnector.record_db_connector.record_insert_db(_work_record_info);
			
			 //插入工作待审批
				  work_waiting_info _work_wating_info=new work_waiting_info();
				  _work_wating_info.set_work_theme(work_record_theme);
				  _work_wating_info.set_work_category(2);
				  _work_wating_info.set_work_sender_id(work_record_creatorid);
				  _work_wating_info.set_work_sender(work_record_creator);
				  _work_wating_info.set_work_receiver_id(work_record_leader_id);
				  _work_wating_info.set_work_receiver(work_record_leader);
				  _work_wating_info.set_work_content(work_record_plan);
				  _work_wating_info.set_work_addtime(record_addtime);
				  _work_wating_info.set_work_id(record_id);
				  
				  boolean rs=com.dbconnector.work_db_connector.waiting_insert_db(_work_wating_info);
			
			//返回插入结果
			
			 ModelAndView mv=new ModelAndView("redirect:record_check_by_user.do?record_page=1&work_record_creatorid="+work_record_creatorid+"&flag=0");
			   
			 return mv;
			   
			   	
		}
		
		//台账根据用户id响应页面
				@RequestMapping("work/record_check_by_user.do")
				public ModelAndView record_check_by_user_request(
						 @RequestParam(value="work_record_creatorid")  int work_record_creatorid,
						 @RequestParam(value="record_page")            int record_page,
						 @RequestParam(value="flag")                   int flag 
						)
				{
			     
				   
				   //得到查询所有条目的list
				   
				   List<work_record_info> work_record_info_list=com.dbconnector.record_db_connector.get_work_record_info_list_by_work_record_creatorid( work_record_creatorid,record_page);
				   
				   int record_total_page=com.dbconnector.record_db_connector.get_record_total_page_by_user(work_record_creatorid);
				   
				   ModelAndView mv=new ModelAndView("myrecord.jsp?record_page="+record_page+"&record_total_page="+record_total_page);
				   
				   mv.addObject("work_record_info_list", work_record_info_list);
				   mv.addObject("flag",flag);
				   return mv;
				   
				}
	  
		//根据台账id查询具体
				
				@RequestMapping("work/check_record_info_by_work_record_id.do")
				  public ModelAndView check_record_info_request(
						  @RequestParam(value="work_record_id") int work_record_id,
						  @RequestParam(value="record_page") int record_page,
						  @RequestParam(value="flag")  int flag
						  )
				  {
					 ModelAndView mv=new ModelAndView("record_detail.jsp?record_page="+record_page+"&flag="+flag);
					 work_record_info _work_record_info=com.dbconnector.record_db_connector.get_work_record_info_by_work_record_id(work_record_id);
					 mv.addObject("work_record_info",_work_record_info);
					 return mv;
				
				  }
				
				@RequestMapping("work/record_send_display.do")
				public ModelAndView record_send_display_request(
						@RequestParam(value="employee_id") int employee_id
						)
				{
					ModelAndView mv=new ModelAndView("record_add.jsp");
					employee_info _employee_info=com.dbconnector.management_db_connector.get_employee_info_by_id(employee_id);
					mv.addObject("employee_info", _employee_info);
					return mv;
				}
}
