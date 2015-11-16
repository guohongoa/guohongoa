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
import com.data.project_info;
import com.mybatis.mybatis_connection_factory;

//所有管理页面请求
@Controller
public class management_request_controller 
{
	
//-----------------------------------------------------------------------------------------
	
		//部门管理请求响应
		@RequestMapping("management/department_insert.do")

		public ModelAndView department_insert_request(
				@RequestParam(value="department_code")        int    department_code,
				@RequestParam(value="department_name")        String department_name,
				@RequestParam(value="department_leader")      String department_leader,
				@RequestParam(value="department_regulation")  String department_regulation,
				@RequestParam(value="department_parent")      String department_parent,
				@RequestParam(value="department_parentleader")String department_parentleader,
				@RequestParam(value="department_leaderphone") int    department_leaderphone,
				@RequestParam(value="department_resourceurl") String    department_resourceurl
				)
		{
			//将表单响应结果插入系统信息数据库
			department_info _department_info=new department_info();
			_department_info.set_department_code(department_code);
			_department_info.set_department_name(department_name);
			_department_info.set_department_regulation(department_regulation);
			_department_info.set_department_leader(department_leader);
			_department_info.set_department_parent(department_parent);
			_department_info.set_department_parentleader(department_parentleader);
			_department_info.set_department_leaderphone(department_leaderphone);
			_department_info.set_department_resourceurl(department_resourceurl);
			
			
			 Date date=new Date();
			 DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			 String department_addtime=format.format(date);
			 _department_info.set_department_addtime(department_addtime);
			   
			 boolean rs=com.dbconnector.management_db_connector.department_insert_db(_department_info);
			 
			 ModelAndView mv=new ModelAndView();
			 mv.addObject("result",rs);
			 return mv;
			
			
			
		}
		
		@RequestMapping("management/department_check.do")
		//查询所有制度条目
		
		public ModelAndView department_check_request()
		{
			
		   ModelAndView mv=new ModelAndView("department_check.jsp");//页面重定向
		   
		   //得到查询所有条目的list
		   
		   List<department_info> department_info_list=com.dbconnector.management_db_connector.get_department_info_list();
		   mv.addObject("department_info_list", department_info_list);
		   return mv;
		}
		
		@RequestMapping("management/department_del.do")
		 public void department_del_request(
				 @RequestParam(value="department_id")    int department_id
				 )
		 {
			com.dbconnector.management_db_connector.del_department_from_id(department_id);
		 }
		
		//-------------------------------------------------------------------------
	    //项目管理部分
		@RequestMapping("project_insert.do")

		public ModelAndView project_insert_request(
				@RequestParam(value="project_code")        int project_code,
				@RequestParam(value="project_name")        String    project_name,
				@RequestParam(value="project_leader")      String project_leader,
				@RequestParam(value="project_leaderphone") int project_leaderphone,
				@RequestParam(value="project_department")  String project_department,
				@RequestParam(value="project_resourceurl") String project_resourceurl,
				@RequestParam(value="project_begintime")      String project_begintime,
				@RequestParam(value="project_endtime") String project_endtime,
				@RequestParam(value="project_content") String project_content,
				@RequestParam(value="project_status")  int project_status,
				@RequestParam(value="project_commiter")  String project_commiter
				)
		{
			//将表单响应结果插入系统信息数据库
		    project_info _project_info=new project_info();
		    _project_info.set_project_code(project_code);
		    _project_info.set_project_name(project_name);
		    _project_info.set_project_leader(project_leader);
		    _project_info.set_project_leaderphone(project_leaderphone);
		    _project_info.set_project_department(project_department);
		    _project_info.set_project_resourceurl(project_resourceurl);
		    _project_info.set_project_begintime(project_begintime);
		    _project_info.set_project_endtime(project_endtime);
		    _project_info.set_project_content(project_content);
		    _project_info.set_project_status(project_status);
		    _project_info.set_project_commiter(project_commiter);
		    
			
			
			 Date date=new Date();
			 DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			 String project_addtime=format.format(date);
			 _project_info.set_project_addtime(project_addtime);
			   
			 boolean rs=com.dbconnector.management_db_connector.project_insert_db(_project_info);
			 
			 ModelAndView mv=new ModelAndView();
			 mv.addObject("result",rs);
			 return mv;
			
			
			
		}
		
		@RequestMapping("management/project_check.do")
		//查询所有项目条目
		
		public ModelAndView project_check_request()
		{
			
		   ModelAndView mv=new ModelAndView("project_total_check.jsp");//页面重定向
		   
		   //得到查询所有条目的list
		   
		   List<project_info> project_info_list=com.dbconnector.management_db_connector.get_project_info_list();
		   mv.addObject("project_info_list", project_info_list);
		   return mv;
		}
		
		@RequestMapping("management/project_check_by_status.do")
		//根据输入状态查询项目条目
		
		public ModelAndView project_check_request(
				@RequestParam(value="project_status")  int project_status
				)
		{
			
		   ModelAndView mv;
		   System.out.println(project_status);
		   switch (project_status) 
		   {
		      case 0: mv=new ModelAndView("project_waiting_check.jsp");break;//未审批请求，返回未审批页面
		      case 1: mv=new ModelAndView("project_approved_check.jsp");break;//已审批请求，返回已审批页面
		      case 2: mv=new ModelAndView("project_refused_check.jsp");break;//未通过请求，返回未通过页面

		      default:mv=new ModelAndView();break;
		    }
		   
		   
		   //得到查询所有条目的list
		   
		   List<project_info> project_info_list=com.dbconnector.management_db_connector.get_project_info_list_by_project_status(project_status);
		   mv.addObject("project_info_list", project_info_list);
		   return mv;
		}
		
		
		@RequestMapping("management/project_del.do")
		 public void project_del_request(
				 @RequestParam(value="project_id")    int project_id
				 )
		 {
			com.dbconnector.management_db_connector.del_project_from_id(project_id);
		 }
		
   //-------------------------------------------------------------------------------
		//人员管理请求响应
		@RequestMapping("management/employee_insert.do")

		public ModelAndView employee_insert_request(
				@RequestParam(value="employee_birthdate")  String    employee_birthdate,     //员工出生日期
				@RequestParam(value="employee_idcode")      String employee_idcode,          //员工身份证号
				@RequestParam(value="employee_department") String employee_department,       //员工部门
				@RequestParam(value="employee_position")  String employee_position,          //员工职位
				@RequestParam(value="employee_gender")      String employee_gender,             //员工性别
				@RequestParam(value="employee_addworktime") String employee_addworktime,     //入职时间
				@RequestParam(value="employee_leader") String employee_leader,               //部门负责人
				@RequestParam(value="employee_phone")  int employee_phone,                   //员工电话
				@RequestParam(value="employee_name")  String employee_name,                 //员工姓名
				@RequestParam(value="employee_duty")  String employee_duty
				)
		{
			//将表单响应结果插入员工信息数据库
		     employee_info _employee_info=new employee_info();
		     _employee_info.set_employee_birthdate(employee_birthdate);
		     _employee_info.set_employee_idcode(employee_idcode);
		     _employee_info.set_employee_department(employee_department);
		     _employee_info.set_employee_position(employee_position);
		     _employee_info.set_employee_gender(employee_gender);
		     _employee_info.set_employee_addworktime(employee_addworktime);
		     _employee_info.set_employee_leader(employee_leader);
		     _employee_info.set_employee_phone(employee_phone);
		     _employee_info.set_employee_name(employee_name);
		     _employee_info.set_employee_duty(employee_duty);
		    
			
			
			 Date date=new Date();
			 DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			 String employee_addtime=format.format(date);
			 _employee_info.set_employee_addtime(employee_addtime);
			   
			 boolean rs=com.dbconnector.management_db_connector.employee_insert_db(_employee_info);
			 
			 ModelAndView mv=new ModelAndView();
			 mv.addObject("result",rs);
			 return mv;
			
			
			
		}
		
		@RequestMapping("management/employee_check.do")
		//查询所有制度条目
		
		public ModelAndView employee_check_request()
		{
			
		   ModelAndView mv=new ModelAndView("employee_check1.jsp");//页面重定向
		   
		   //得到查询所有条目的list
		   
		   List<employee_info> employee_info_list=com.dbconnector.management_db_connector.get_employee_info_list();
		   mv.addObject("employee_info_list", employee_info_list);
		   return mv;
		}
		
		@RequestMapping("management/employee_del.do")
		 public void employee_del_request(
				 @RequestParam(value="employee_id")    int employee_id
				 )
		 {
			com.dbconnector.management_db_connector.del_employee_from_id(employee_id);
		 }
		
	//-------------------------------------------------------------------------------
		//制度管理数据库功能函数
		
		


}
