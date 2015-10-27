package com.viewcontroller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.department_info_dao;
import com.dao.employee_info_dao;
import com.dao.project_info_dao;
import com.dao.regulation_info_dao;
import com.data.department_info;
import com.data.employee_info;
import com.data.project_info;
import com.data.regulation_info;
import com.mybatis.mybatis_connection_factory;

//所有管理页面请求
@Controller
public class management_request_controller 
{
	
//-----------------------------------------------------------------------------------------
	//制度管理部分
	     //规章制度插入页面
		@RequestMapping("regulation_insert.do")

		public ModelAndView regulation_insert_request(
				@RequestParam(value="regulation_department")  String regulation_department,
				@RequestParam(value="regulation_title")       String regulation_title,
				@RequestParam(value="regulation_content")     String regulation_content,
				@RequestParam(value="regulation_resourceurl") String regulation_resourceurl
				)
		{
			//将表单响应结果插入系统信息数据库
			regulation_info _regulation_info=new regulation_info();
			_regulation_info.set_regulation_department(regulation_department);
			_regulation_info.set_regulation_title(regulation_title);
			_regulation_info.set_regulation_content(regulation_content);
			_regulation_info.set_regulation_resourceurl(regulation_resourceurl);
			
			 Date date=new Date();
			 DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			 String regulation_addtime=format.format(date);
			 _regulation_info.set_regulation_addtime(regulation_addtime);
			   
			 boolean rs=regulation_insert_db(_regulation_info);
			 
			 ModelAndView mv=new ModelAndView();
			 mv.addObject("result",rs);
			 return mv;
			
			
			
		}
		
		@RequestMapping("management/regulation_check.do")
		//查询所有制度条目
		
		public ModelAndView regulation_check_request()
		{
			
		   ModelAndView mv=new ModelAndView("regulation_check");//页面重定向
		   
		   //得到查询所有条目的list
		   
		   List<regulation_info> regulation_info_list=get_regulation_info_list();
		   mv.addObject("regulation_info_list", regulation_info_list);
		   return mv;
		}
//----------------------------------------------------------------
		//部门管理请求响应
		@RequestMapping("management/department_insert.do")

		public ModelAndView department_insert_request(
				@RequestParam(value="department_code")        int    department_code,
				@RequestParam(value="department_name")        String department_name,
				@RequestParam(value="department_leader")      String department_leader,
				@RequestParam(value="department_duty")        String department_duty,
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
			_department_info.set_department_duty(department_duty);
			_department_info.set_department_leader(department_leader);
			_department_info.set_department_parent(department_parent);
			_department_info.set_department_leaderphone(department_leaderphone);
			_department_info.set_department_resourceurl(department_resourceurl);
			
			
			 Date date=new Date();
			 DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			 String department_addtime=format.format(date);
			 _department_info.set_department_addtime(department_addtime);
			   
			 boolean rs=department_insert_db(_department_info);
			 
			 ModelAndView mv=new ModelAndView();
			 mv.addObject("result",rs);
			 return mv;
			
			
			
		}
		
		@RequestMapping("management/department_check.do")
		//查询所有制度条目
		
		public ModelAndView department_check_request()
		{
			
		   ModelAndView mv=new ModelAndView("department_check");//页面重定向
		   
		   //得到查询所有条目的list
		   
		   List<department_info> department_info_list=get_department_info_list();
		   mv.addObject("department_info_list", department_info_list);
		   return mv;
		}
		
		@RequestMapping("management/department_del.do")
		 public void department_del_request(
				 @RequestParam(value="department_id")    int department_id
				 )
		 {
			del_department_from_id(department_id);
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
			   
			 boolean rs=project_insert_db(_project_info);
			 
			 ModelAndView mv=new ModelAndView();
			 mv.addObject("result",rs);
			 return mv;
			
			
			
		}
		
		@RequestMapping("management/project_check.do")
		//查询所有制度条目
		
		public ModelAndView project_check_request()
		{
			
		   ModelAndView mv=new ModelAndView("project_check");//页面重定向
		   
		   //得到查询所有条目的list
		   
		   List<project_info> project_info_list=get_project_info_list();
		   mv.addObject("project_info_list", project_info_list);
		   return mv;
		}
		
		@RequestMapping("management/project_del.do")
		 public void project_del_request(
				 @RequestParam(value="project_id")    int project_id
				 )
		 {
			del_project_from_id(project_id);
		 }
		
   //-------------------------------------------------------------------------------
		//人员管理请求响应
		@RequestMapping("employee_insert.do")

		public ModelAndView employee_insert_request(
				@RequestParam(value="employee_code")        int employee_code,               //员工编号
				@RequestParam(value="employee_birthdate")  String    employee_birthdate,     //员工出生日期
				@RequestParam(value="employee_idcode")      String employee_idcode,          //员工身份证号
				@RequestParam(value="employee_department") String employee_department,       //员工部门
				@RequestParam(value="employee_position")  String employee_position,          //员工职位
				@RequestParam(value="employee_address") String employee_address,             //员工住址
				@RequestParam(value="employee_gender")      String employee_gender,             //员工性别
				@RequestParam(value="employee_addworktime") String employee_addworktime,     //入职时间
				@RequestParam(value="employee_leader") String employee_leader,               //部门负责人
				@RequestParam(value="employee_phone")  int employee_phone,                   //员工电话
				@RequestParam(value="employee_email")  String employee_email,                //员工邮件
				@RequestParam(value="employee_name")  String employee_name                   //员工姓名
				)
		{
			//将表单响应结果插入员工信息数据库
		     employee_info _employee_info=new employee_info();
		     _employee_info.set_employee_code(employee_code);
		     _employee_info.set_employee_birthdate(employee_birthdate);
		     _employee_info.set_employee_idcode(employee_idcode);
		     _employee_info.set_employee_department(employee_department);
		     _employee_info.set_employee_position(employee_position);
		     _employee_info.set_employee_address(employee_address);
		     _employee_info.set_employee_gender(employee_gender);
		     _employee_info.set_employee_addworktime(employee_addworktime);
		     _employee_info.set_employee_leader(employee_leader);
		     _employee_info.set_employee_phone(employee_phone);
		     _employee_info.set_employee_email(employee_email);
		     _employee_info.set_employee_name(employee_name);
		    
			
			
			 Date date=new Date();
			 DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			 String employee_addtime=format.format(date);
			 _employee_info.set_employee_addtime(employee_addtime);
			   
			 boolean rs=employee_insert_db(_employee_info);
			 
			 ModelAndView mv=new ModelAndView();
			 mv.addObject("result",rs);
			 return mv;
			
			
			
		}
		
		@RequestMapping("management/employee_check.do")
		//查询所有制度条目
		
		public ModelAndView employee_check_request()
		{
			
		   ModelAndView mv=new ModelAndView("employee_check");//页面重定向
		   
		   //得到查询所有条目的list
		   
		   List<employee_info> employee_info_list=get_employee_info_list();
		   mv.addObject("employee_info_list", employee_info_list);
		   return mv;
		}
		
		@RequestMapping("management/employee_del.do")
		 public void employee_del_request(
				 @RequestParam(value="employee_id")    int employee_id
				 )
		 {
			del_employee_from_id(employee_id);
		 }
		
	//-------------------------------------------------------------------------------
		//制度管理数据库功能函数
		
		private boolean regulation_insert_db(regulation_info _regulation_info)
		{
			regulation_info_dao _regulation_info_dao=new regulation_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			
			boolean regulationinsert_rs=_regulation_info_dao.insert(_regulation_info);
			
			return regulationinsert_rs;
		}
		
		 private List<regulation_info> get_regulation_info_list()
		   {
			   List<regulation_info> regulation_info_list;
			   regulation_info_dao _regulation_info_dao=new regulation_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			   regulation_info_list=_regulation_info_dao.select_all();
			   return regulation_info_list;
			   
		   }
		 
		 //部门管理数据库功能函数
		 
		 private boolean department_insert_db(department_info _department_info)
			{
				department_info_dao _department_info_dao=new department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
				
				boolean department_insert_rs=_department_info_dao.insert(_department_info);
				
				return department_insert_rs; 
				
			}
		 
		 
		 
		 private List<department_info> get_department_info_list()
		   {
			   List<department_info> department_info_list;
			   department_info_dao _department_info_dao=new department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			   department_info_list=_department_info_dao.select_all();
			   return department_info_list;
			   
		   }
		 
		 private void del_department_from_id(int department_id)
		 {
			 department_info_dao _department_info_dao=new department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			 _department_info_dao.delete_from_id(department_id);
		 }
		 
		 //项目管理数据库功能函数
		 private boolean project_insert_db(project_info _project_info)
			{
				project_info_dao _project_info_dao=new project_info_dao(mybatis_connection_factory.getSqlSessionFactory());
				
				boolean projectinsert_rs=_project_info_dao.insert(_project_info);
				
				return projectinsert_rs;
			}
		 
		 private List<project_info> get_project_info_list()
		   {
			   List<project_info> project_info_list;
			   project_info_dao _project_info_dao=new project_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			   project_info_list=_project_info_dao.select_all();
			   return project_info_list;
			   
		   }
		 
		 private void del_project_from_id(int project_id)
		 {
			 project_info_dao _project_info_dao=new project_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			 _project_info_dao.delete_from_id(project_id);
		 }
		 
		 //人员管理数据库功能函数
		 private boolean employee_insert_db(employee_info _employee_info)
			{
				employee_info_dao _employee_info_dao=new employee_info_dao(mybatis_connection_factory.getSqlSessionFactory());
				
				boolean employeeinsert_rs=_employee_info_dao.insert(_employee_info);
				
				return employeeinsert_rs;
			}
		 
		 private List<employee_info> get_employee_info_list()
		   {
			   List<employee_info> employee_info_list;
			   employee_info_dao _employee_info_dao=new employee_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			   employee_info_list=_employee_info_dao.select_all();
			   return employee_info_list;
			   
		   }
		 
		 private void del_employee_from_id(int employee_id)
		 {
			 employee_info_dao _employee_info_dao=new employee_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			 _employee_info_dao.delete_from_id(employee_id);
		 }


}
