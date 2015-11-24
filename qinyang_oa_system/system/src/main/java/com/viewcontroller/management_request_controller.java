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

import com.data.department_info;
import com.data.employee_info;
import com.data.project_info;
import com.data.service_group_info;
import com.data.service_village_county_info;
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
				@RequestParam(value="department_leaderphone") String    department_leaderphone,
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
		
		//部门管理修改显示页面
		@RequestMapping("management/department_modify.do")
		
		public ModelAndView department_modify_check_request(
		    @RequestParam(value="department_id")        int    department_id
				)
		{
			ModelAndView mv=new ModelAndView("department_modify.jsp");
			department_info _department_info=com.dbconnector.management_db_connector.get_department_info_by_id(department_id);
			
			
			mv.addObject("department_info",_department_info);
			
			return mv;
		}
		
		@RequestMapping("management/department_modify_commit.do")
		
		public void department_modify_commit_request(
				@RequestParam(value="department_id")              int      department_id,
				@RequestParam(value="department_name")            String    department_name,
				@RequestParam(value="department_code")            int      department_code,
				@RequestParam(value="department_regulation")      String   department_regulation,
				@RequestParam(value="department_leader")          String  department_leader,
				@RequestParam(value="department_parent")          String  department_parent,
				@RequestParam(value="department_parentleader")    String  department_parentleader,
				@RequestParam(value="department_leaderphone")    String  department_leaderphone
				
				)
		{
			department_info _department_info=new department_info();
			_department_info.set_department_id(department_id);
			_department_info.set_department_name(department_name);
			_department_info.set_department_code(department_code);
			_department_info.set_department_regulation(department_regulation);
			_department_info.set_department_leaderphone(department_leaderphone);
			_department_info.set_department_leader(department_leaderphone);
			_department_info.set_department_parent(department_parent);
			_department_info.set_department_parentleader(department_parentleader);
			
			
			boolean rs=com.dbconnector.management_db_connector.update_department_info(_department_info);
			
			
		}
		
		
		//-------------------------------------------------------------------------
	  
		
   //-------------------------------------------------------------------------------
		//人员管理请求响应
		@RequestMapping("management/employee_insert.do")

		public ModelAndView employee_insert_request(
				@RequestParam(value="employee_birthdate")  String    employee_birthdate,     //员工出生日期
				@RequestParam(value="employee_idcode")      String employee_idcode,          //员工身份证号
				@RequestParam(value="employee_department_id") int employee_department_id,       //员工部门id
				@RequestParam(value="employee_position")  String employee_position,          //员工职位
				@RequestParam(value="employee_gender")      String employee_gender,             //员工性别
				@RequestParam(value="employee_addworktime") String employee_addworktime,     //入职时间
				@RequestParam(value="employee_leader_id") int employee_leader_id,               //部门负责人
				@RequestParam(value="employee_phone")  String employee_phone,                   //员工电话
				@RequestParam(value="employee_name")  String employee_name,                 //员工姓名
				@RequestParam(value="employee_duty")  String employee_duty
				)
		{
			//将表单响应结果插入员工信息数据库
		     employee_info _employee_info=new employee_info();
		     _employee_info.set_employee_birthdate(employee_birthdate);
		     _employee_info.set_employee_idcode(employee_idcode);
		     _employee_info.set_employee_department_id(employee_department_id);
		     _employee_info.set_employee_position(employee_position);
		     _employee_info.set_employee_gender(employee_gender);
		     _employee_info.set_employee_addworktime(employee_addworktime);
		     _employee_info.set_employee_leader_id(employee_leader_id);
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
			
		   ModelAndView mv=new ModelAndView("employee_check.jsp");//页面重定向
		   
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
		
		//显示员工管理修改内容
		@RequestMapping("management/employee_modify.do")
		public ModelAndView employee_modify_check_request(
			    @RequestParam(value="employee_id")        int    employee_id
					)
			{
				ModelAndView mv=new ModelAndView("employee_modify.jsp");
				employee_info _employee_info=com.dbconnector.management_db_connector.get_employee_info_by_id(employee_id);
				
				
				mv.addObject("employee_info",_employee_info);
				
				return mv;
			}
		
		@RequestMapping("management/employee_modify_commit.do")
			public void employee_modify_commit_request(
					@RequestParam(value="employee_id")                int     employee_id,
					@RequestParam(value="employee_name")              String  employee_name,
					@RequestParam(value="employee_gender")            String  employee_gender,
					@RequestParam(value="employee_birthdate")         String  employee_birthdate,
					@RequestParam(value="employee_idcode")            String  employee_idcode,
					@RequestParam(value="employee_position")          String  employee_position,
					@RequestParam(value="employee_addworktime")       String  employee_addworktime,
					@RequestParam(value="employee_department_id")     int  employee_department_id,
					@RequestParam(value="employee_leader_id")         int  employee_leader_id,
					@RequestParam(value="employee_phone")             String  employee_phone,
					@RequestParam(value="employee_duty")              String  employee_duty
					
					
					)
			{
				employee_info _employee_info=new employee_info();
				_employee_info.set_employee_id(employee_id);
				_employee_info.set_employee_name(employee_name);
				_employee_info.set_employee_gender(employee_gender);
				_employee_info.set_employee_birthdate(employee_birthdate);
				_employee_info.set_employee_idcode(employee_idcode);
				_employee_info.set_employee_position(employee_position);
				_employee_info.set_employee_addworktime(employee_addworktime);
				_employee_info.set_employee_department_id(employee_department_id);
				_employee_info.set_employee_leader_id(employee_leader_id);
				_employee_info.set_employee_phone(employee_phone);
				_employee_info.set_employee_duty(employee_duty);
				
				
				
				
				boolean rs=com.dbconnector.management_db_connector.update_employee_info(_employee_info);
				
				
			}
		
	//-------------------------------------------------------------------------------
		//五服务功能小组管理
		
		@RequestMapping("management/service_group_add.do")
		public ModelAndView group_add_request(
				
				@RequestParam(value="service_village_county_name")  String    service_village_county_name,  //五服务功能小组所属乡镇名称
				
				@RequestParam(value="service_village_county_id")    int          service_village_county_id,    //五服务乡镇id
				@RequestParam(value="service_village_name")         String       service_village_name,         //五服务小组所属村名
				@RequestParam(value="service_village_id")           int       service_village_id,      //五服务小组所属村庄id
				
				@RequestParam(value="service_type")                 int       service_type,              //五服务小组服务类别
				
				
				@RequestParam(value="service_group_leader")         String    service_group_leader,         //责任人
				@RequestParam(value="service_group_phone")          String    service_group_phone,          //负责人电话
				@RequestParam(value="service_group_duty")           String    service_group_duty,           //五服务小组小组职责
				@RequestParam(value="service_group_member")         String    service_group_member          //五服务小组成员
				
				)
		{
			System.out.println(service_type);

			
			service_group_info _service_group_info=new service_group_info();
			_service_group_info.set_service_village_county_name(service_village_county_name);
			_service_group_info.set_service_village_county_id(service_village_county_id);
			_service_group_info.set_service_village_name(service_village_name);
			_service_group_info.set_service_village_id(service_village_id);
			_service_group_info.set_service_type(service_type);
			_service_group_info.set_service_group_leader(service_group_leader);
			_service_group_info.set_service_group_phone(service_group_phone);
			_service_group_info.set_service_group_duty(service_group_duty);
			_service_group_info.set_service_group_member(service_group_member);
			
			
			
			 Date date=new Date();
			 DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			 String service_group_addtime=format.format(date);
			 _service_group_info.set_service_group_addtime(service_group_addtime);
			 
			   
			 boolean rs=com.dbconnector.management_db_connector.service_group_insert_db(_service_group_info);
			 
			 ModelAndView mv=new ModelAndView();
			 mv.addObject("result",rs);
			 
			 return mv;
		}
		
		@RequestMapping("management/service_group_check.do")
		//五服务小组信息查看
		public ModelAndView service_group_check_request()
		{
			
		   ModelAndView mv=new ModelAndView("service_group_check.jsp");//页面重定向
		   
		   //得到查询所有条目的list
		   
		   List<service_group_info> service_group_info_list=com.dbconnector.management_db_connector.get_service_group_list();
		   mv.addObject("service_group_info_list",service_group_info_list);
		   return mv;
		}
		
		

			//显示五服务小组修改内容
			@RequestMapping("management/service_group_modify.do")
			public ModelAndView service_group_modify_check_request(
				    @RequestParam(value="service_group_id")        int    service_group_id
						)
				{
					ModelAndView mv=new ModelAndView("service_group_modify.jsp");
					service_group_info _service_group_info=com.dbconnector.management_db_connector.get_service_group_info_by_id(service_group_id);
					
					
					mv.addObject("service_group_info",_service_group_info);
					
					return mv;
				}

			@RequestMapping("management/service_group_modify_commit.do")
			public void service_group_modify_commit_request(
					@RequestParam(value="service_group_id")                int     service_group_id,
					@RequestParam(value="service_village_county_name")     String service_village_county_name,
					@RequestParam(value="service_village_name")            String service_village_name,
					@RequestParam(value="service_type")                    int    service_type,
					@RequestParam(value="service_group_leader")            String service_group_leader,
					@RequestParam(value="service_group_phone")             String  service_group_phone,
					@RequestParam(value="service_group_duty")              String  service_group_duty,
					@RequestParam(value="service_group_member")            String  service_group_member
					
					
					)
			{
				service_group_info _service_group_info=new service_group_info();
				_service_group_info.set_service_group_id(service_group_id);
				_service_group_info.set_service_village_county_name(service_village_county_name);
				_service_group_info.set_service_village_name(service_village_name);
				_service_group_info.set_service_type(service_type);
				_service_group_info.set_service_group_leader(service_group_leader);
				_service_group_info.set_service_group_phone(service_group_phone);
				_service_group_info.set_service_group_duty(service_group_duty);
				_service_group_info.set_service_group_member(service_group_member);
				
				
				
				boolean rs=com.dbconnector.management_db_connector.update_service_group_info(_service_group_info);
				
				
			}
			
			@RequestMapping("management/employee_add_check.do")
			public ModelAndView employee_add_check_request(
					
					)
			{
				//读取所有部门和人员信息，将其转入下拉框中，下一版改进版实现信息刷选、动态显示、二级联动
				List<department_info> department_info_list=com.dbconnector.management_db_connector.get_department_info_list(); 
				List<employee_info> employee_info_list=com.dbconnector.management_db_connector.get_employee_info_list();
				
				ModelAndView mv=new ModelAndView("employee_add_display.jsp");
				
				mv.addObject("department_info_list",department_info_list);
				mv.addObject("employee_info_list", employee_info_list);
				return mv;
				
				
			}
}
