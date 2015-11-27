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
}
