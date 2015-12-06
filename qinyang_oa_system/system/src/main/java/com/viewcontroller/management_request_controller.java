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
import com.data.service_village_info;
import com.mybatis.mybatis_connection_factory;

//所有管理页面请求
@Controller
public class management_request_controller 
{
	
//-----------------------------------------------------------------------------------------
	
	@RequestMapping("management/village_add.do")
	public ModelAndView county_add_request(
			@RequestParam(value="service_village_county_name")        String service_village_county_name,       //五服务覆盖村庄名称 
			@RequestParam(value="service_village_county_leader")      String service_village_county_leader,     //五服务覆盖村庄负责人名称
			@RequestParam(value="service_village_county_leaderphone") String service_village_county_leaderphone, //五服务覆盖村庄负责人电话
			@RequestParam(value="str_service_village_names")          String str_service_village_names            //以空格隔开的多个村庄信息
			)
	{
		//初始化service_village_county_info对象
		service_village_county_info _service_village_county_info=new service_village_county_info();
		_service_village_county_info.set_service_village_county_name(service_village_county_name);
		_service_village_county_info.set_service_village_county_leader(service_village_county_leader);
		_service_village_county_info.set_service_village_county_leaderphone(service_village_county_leaderphone);
		
		
		//添加系统时间
		   Date date=new Date();
		   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		   String service_village_county_addtime=format.format(date);
		   _service_village_county_info.set_service_village_county_addtime(service_village_county_addtime);
		   
		  int service_village_county_id=com.dbconnector.service_db_connector.service_village_county_insert_db(_service_village_county_info);
		 
		  //将村庄信息及对应镇添加入村庄列表
		  com.dbconnector.service_db_connector.service_village_insert_db(str_service_village_names,service_village_county_id,service_village_county_name,service_village_county_addtime);
		
		//返回插入结果
		
		 ModelAndView mv=new ModelAndView("redirect:/management/check_service_village_detail.do?village_page=1");
		   
		   return mv;
		   
		   	
	}
	
	@RequestMapping("management/check_service_village_detail.do")
	public ModelAndView service_village_check_request(
			@RequestParam(value="village_page") int village_page
			)
	{
		int village_total_page=com.dbconnector.service_db_connector.get_village_total_page();
		
		ModelAndView mv=new ModelAndView("village_check.jsp?village_page="+village_page+"&village_total_page="+village_total_page);
	   
      
	   
	   //返回
	   List<service_village_county_info> service_village_county_info_list=com.dbconnector.service_db_connector.get_service_village_county_list(village_page);
	   List<service_village_info> service_village_info_list=com.dbconnector.service_db_connector.get_service_village_info_list_by_couty_list(service_village_county_info_list);
	   mv.addObject("service_village_county_info_list", service_village_county_info_list);
	   mv.addObject("service_village_info_list",service_village_info_list);
	   return mv;
	}
	
	//管理页面乡镇下属村镇修改页面显示请求
	@RequestMapping("management/village_modify.do")
	public ModelAndView village_modify_request(
			@RequestParam(value="service_village_county_id")        int service_village_county_id,
			@RequestParam(value="village_page")                     int village_page
			)
	{
		ModelAndView mv=new ModelAndView("village_modify.jsp?village_page="+village_page+"&service_village_county_id="+service_village_county_id);
		//返回村镇信息
		service_village_county_info _service_village_county_info=com.dbconnector.service_db_connector.get_service_village_county_info_by_id(service_village_county_id);
		
		//返回村镇对应村庄名称，以空格分隔
		
		String str_service_village_names=com.dbconnector.service_db_connector.get_service_village_names_by_count_id(service_village_county_id);
		
		mv.addObject("service_village_county_info", _service_village_county_info);
		mv.addObject("str_service_village_names", str_service_village_names);
		
		return mv;
	}
	
	//管理页面乡镇下属村镇删除页面显示请求
	@RequestMapping("management/village_del.do")
	public ModelAndView village_del_request(
			@RequestParam(value="service_village_county_id")        int service_village_county_id,
			@RequestParam(value="village_page")                     int village_page
			)
	{
		ModelAndView mv=new ModelAndView("redirect:/management/check_service_village_detail.do?village_page="+village_page);
		//以乡镇id为标志删除对应行
		com.dbconnector.service_db_connector.del_service_village_info_by_count_id(service_village_county_id);
		
		return mv;
	}
	
	//管理页面村镇管理修改提交请求响应
	@RequestMapping("management/village_update_commit.do")
	public ModelAndView  village_update_commit_request(
			
			
			@RequestParam(value="service_village_county_id")           int    service_village_county_id,
			@RequestParam(value="service_village_county_name")         String service_village_county_name,
			@RequestParam(value="service_village_county_leader")       String service_village_county_leader,
			@RequestParam(value="service_village_county_leaderphone")  String service_village_county_leaderphone,
			@RequestParam(value="str_service_village_names")           String str_service_village_names,
			@RequestParam(value="village_page")                     int village_page
			
			
			)
	{
		service_village_county_info _service_village_county_info=new service_village_county_info();
		_service_village_county_info.set_service_village_county_id(service_village_county_id);
		_service_village_county_info.set_service_village_county_name(service_village_county_name);
		_service_village_county_info.set_service_village_county_leader(service_village_county_leader);
		_service_village_county_info.set_service_village_county_leaderphone(service_village_county_leaderphone);
		
		 Date date=new Date();
		 DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 String service_village_addtime=format.format(date);

		
		boolean rs=com.dbconnector.service_db_connector.update_county_info(_service_village_county_info);
		boolean rs2=com.dbconnector.service_db_connector.update_villages_name(service_village_county_id, service_village_county_name, service_village_addtime, str_service_village_names);
		
		ModelAndView mv=new ModelAndView("redirect:/management/check_service_village_detail.do?village_page="+village_page);//页面重定向至查看页面
		return mv;
		
	}
	
	//村镇信息详细页面
	@RequestMapping("management/village_detail.do")
	public ModelAndView village_check_detail_request(
			@RequestParam(value="service_village_county_id")        int service_village_county_id,
			@RequestParam(value="village_page")                     int village_page
			
			)
	{
		ModelAndView mv=new ModelAndView("village_detail_by_id.jsp?service_village_county_id"+service_village_county_id+"&village_page="+village_page);
		service_village_county_info _service_village_county_info=com.dbconnector.service_db_connector.get_service_village_county_info_by_id(service_village_county_id);
		String villages=com.dbconnector.service_db_connector.get_service_village_names_by_count_id(service_village_county_id);
		mv.addObject("service_village_county_info", _service_village_county_info);
		mv.addObject("villages",villages);
		return mv;

	}
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
		
		public ModelAndView department_check_request(
				@RequestParam(value="department_page")    int department_page
				)
		{
		  int department_total_page=com.dbconnector.management_db_connector.get_department_total_page();
		   ModelAndView mv=new ModelAndView("department_check.jsp?department_page="+department_page+"&department_total_page="+department_total_page);//页面重定向
		   
		   //得到查询所有条目的list
		  
		   
		   List<department_info> department_info_list=com.dbconnector.management_db_connector.get_department_info_list(department_page);
		   mv.addObject("department_info_list", department_info_list);
		   return mv;
		}
		
		@RequestMapping("management/department_del.do")
		 public ModelAndView department_del_request(
				 @RequestParam(value="department_id")    int department_id
				 )
		 {
			ModelAndView mv=new ModelAndView("department_check_request.jsp");
			com.dbconnector.management_db_connector.del_department_from_id(department_id);
			return mv;
		 }
		
		//部门管理修改显示页面
		@RequestMapping("management/department_modify.do")
		
		public ModelAndView department_modify_check_request(
		    @RequestParam(value="department_id")        int    department_id,
		    @RequestParam(value="department_page")      int department_page
				)
		{
			ModelAndView mv=new ModelAndView("department_modify.jsp?department_id="+department_id+"&department_page"+department_page);
			department_info _department_info=com.dbconnector.management_db_connector.get_department_info_by_id(department_id);
			
			
			mv.addObject("department_info",_department_info);
			
			return mv;
		}
		
		@RequestMapping("management/department_modify_commit.do")
		
		//部门修改提交
		public ModelAndView department_modify_commit_request(
				@RequestParam(value="department_id")              int      department_id,
				@RequestParam(value="department_name")            String    department_name,
				@RequestParam(value="department_code")            int      department_code,
				@RequestParam(value="department_regulation")      String   department_regulation,
				@RequestParam(value="department_leader")          String  department_leader,
				@RequestParam(value="department_parent")          String  department_parent,
				@RequestParam(value="department_parentleader")    String  department_parentleader,
				@RequestParam(value="department_leaderphone")    String  department_leaderphone,
				
				@RequestParam(value="department_page")          int department_page  //修改前的页数位置
				
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
			
			ModelAndView mv=new ModelAndView("redirect:/management/department_check.do?department_page="+department_page);
			return mv;
		}
		
		@RequestMapping("management/department_detail.do")
		
		public ModelAndView employee_detail_request(
				@RequestParam(value="department_id")    int department_id,
				@RequestParam(value="department_page")  int department_page
				)
		{
			ModelAndView mv=new ModelAndView("department_detail_by_id.jsp?department_id="+department_id+"&department_page="+department_page);
			department_info _department_info=com.dbconnector.management_db_connector.get_department_info_by_id(department_id);
			mv.addObject("department_info", _department_info);
			return mv;
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
				@RequestParam(value="employee_gender")      int employee_gender,             //员工性别
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
		     
		     String phone=_employee_info.get_employee_phone();
				String employee_password;
				if(phone.length()>5)
				{
					employee_password=phone.substring(phone.length()-6, phone.length());
				}
				else
				{
					employee_password="123456";
				}
				
				
				_employee_info.set_employee_password(employee_password);
		    
			
			
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
		
		public ModelAndView employee_check_request(
				@RequestParam(value="employee_page") int employee_page
				)
		{
			
			int employee_total_page=com.dbconnector.management_db_connector.get_employee_total_page();
			ModelAndView mv=new ModelAndView("employee_check.jsp?employee_page="+employee_page+"&employee_total_page="+employee_total_page);//页面重定向
		
		   
		   //得到查询所有条目的list
		   
		   //List<employee_info> employee_info_list=com.dbconnector.management_db_connector.get_employee_info_list();
		   List<employee_info> employee_info_list=com.dbconnector.management_db_connector.get_employee_info_list_by_page(employee_page);
		   mv.addObject("employee_info_list", employee_info_list);
		   return mv;
		}
		
		//删除用户信息
		@RequestMapping("management/employee_del.do")
		 public ModelAndView employee_del_request(
				 @RequestParam(value="employee_id")    int employee_id,
				 @RequestParam(value="employee_page")    int employee_page
				 )
		 {
			
			com.dbconnector.management_db_connector.del_employee_from_id(employee_id);
			 ModelAndView mv=new ModelAndView("redirect:／employee_check.do?employee_page="+employee_page);//页面重定向
			return mv;
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
					@RequestParam(value="employee_gender")            int     employee_gender,
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
		
		@RequestMapping("management/employee_detail.do")
		public ModelAndView employee_check_detail_request(
				 @RequestParam(value="employee_id")    int employee_id
				)
		{
			ModelAndView mv=new ModelAndView("employee_detail_by_id.jsp");
			employee_info _employee_info=com.dbconnector.management_db_connector.get_employee_info_by_id(employee_id);
			//使用部门id，获取员工部门信息
			//使用上级id，获取上级姓名
			
			String employee_department=com.dbconnector.management_db_connector.get_department_info_by_id(_employee_info.get_employee_department_id()).get_department_name();
			 String employee_leader;
			if(_employee_info.get_employee_leader_id()!=-1)
			{
			    employee_leader=com.dbconnector.management_db_connector.get_employee_info_by_id(_employee_info.get_employee_leader_id()).get_employee_name();
			}
			else
			{
				employee_leader="无";
			}
			
			mv.addObject("employee_department", employee_department);
			mv.addObject("employee_leader", employee_leader);
			mv.addObject("employee_info",_employee_info);
			return mv;
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

			//添加至五服务小组数据库
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
			 
             //根据五服务小组成员，修改对应用户的身份信息，修改 employee_is_service_member
			 com.dbconnector.userinfo_db_connector.add_service_member(service_group_member,service_type);
			 
			 ModelAndView mv=new ModelAndView();
			 mv.addObject("result",rs);
			 
			 return mv;
		}
		
		@RequestMapping("management/service_group_check.do")
		//五服务小组信息查看
		public ModelAndView service_group_check_request(
				
				@RequestParam(value="service_group_page")        int    service_group_page
				)
		{
		   int service_group_total_page=com.dbconnector.management_db_connector.get_service_group_total_page();
		   ModelAndView mv=new ModelAndView("service_group_check.jsp?service_group_page="+service_group_page+"&service_group_total_page="+service_group_total_page);//页面重定向
		   
		   //得到查询所有条目的list
		   
		   List<service_group_info> service_group_info_list=com.dbconnector.management_db_connector.get_service_group_list_by_page(service_group_page);
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
			
			@RequestMapping("management/service_group_del.do")
			public ModelAndView service_group_del_request(
					 @RequestParam(value="service_group_id")  int service_group_id
					)
			{
				ModelAndView mv=new ModelAndView("service_group_check_request.jsp");
				com.dbconnector.management_db_connector.del_service_group_id(service_group_id);
				return mv;
			}
			
			@RequestMapping("management/employee_add_check.do")
			public ModelAndView employee_add_check_request(
					
					)
			{
				//读取所有部门和人员信息，将其转入下拉框中，下一版改进版实现信息刷选、动态显示、二级联动
				List<department_info> department_info_list=com.dbconnector.management_db_connector.get_all_department_info_list(); 
				List<employee_info> employee_info_list=com.dbconnector.management_db_connector.get_employee_info_list();
				
				ModelAndView mv=new ModelAndView("employee_add_display.jsp");
				
				mv.addObject("department_info_list",department_info_list);
				mv.addObject("employee_info_list", employee_info_list);
				return mv;
				
				
			}
			
			@RequestMapping("management/service_group_detail.do")
			public ModelAndView service_group_detail_request(
					 @RequestParam(value="service_group_id")  int service_group_id
					)
			{
				ModelAndView mv=new ModelAndView("service_group_detail_by_id.jsp");
				service_group_info _service_group_info=com.dbconnector.management_db_connector.get_service_group_info_by_id(service_group_id);
				mv.addObject("service_group_info", _service_group_info);
				return mv;
			}
}
