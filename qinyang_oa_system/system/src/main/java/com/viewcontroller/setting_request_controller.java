package com.viewcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.data.department_info;
import com.data.employee_info;

@Controller
public class setting_request_controller 
{
	 @RequestMapping("setting/check_personal.do")
	  public ModelAndView personal_info_request(
		  @RequestParam(value="employee_id") int employee_id
			  )
	  {
		  ModelAndView mv=new ModelAndView("personal.jsp");
		  employee_info _employee_info=com.dbconnector.management_db_connector.get_employee_info_by_id(employee_id);
		  employee_info _parent_employee_info=com.dbconnector.management_db_connector.get_employee_info_by_id(_employee_info.get_employee_leader_id());
		  department_info _department_info=com.dbconnector.management_db_connector.get_department_info_by_id(_employee_info.get_employee_department_id());
		  
		  if(_parent_employee_info!=null)
		  {
			  mv.addObject("employee_leader",_parent_employee_info.get_employee_name());
		  }
		 
		  if(_department_info!=null)
		  {
			  mv.addObject("employee_department",_department_info.get_department_name());
		  }
		  
		  mv.addObject("employee_info", _employee_info);
		  return mv;
	  }
	 
	 
	 //更改密码响应页面
	 @RequestMapping("change_password.do")
		public ModelAndView change_password_request(
				 @RequestParam(value="employee_id")         int    employee_id,     //用户id
				 @RequestParam(value="employee_password")   String employee_password,//现在的密码
				 @RequestParam(value="new_password")        String new_password,    //新密码
				 @RequestParam(value="confirm_password")    String confirm_password //第二遍输入的确认密码
				)
		{
			ModelAndView mv=new ModelAndView("setting/change_password_result.jsp");
			
			int result;//返回结果
			boolean is_success=com.dbconnector.userinfo_db_connector.check_passsword_correct(employee_id, employee_password);
			
			if(is_success==false)
			{
				result=0;//"旧密码输入错误";
			}
			else
			{
				if(new_password.equals(confirm_password))
				{
					boolean rs=com.dbconnector.userinfo_db_connector.update_password(employee_id, new_password);
					if(rs==true)
					{
						result=1;//"修改成功";
					}
					else
					{
						result=2;//"修改失败，请重新尝试";
					}
				}
				else
				{
					result=3;//"两次新密码输入结果不一致";
				}
				
			}
			mv.addObject("result", result);
			
			return mv;
		}
}
