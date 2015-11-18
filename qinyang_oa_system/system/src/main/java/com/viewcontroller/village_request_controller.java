package com.viewcontroller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.data.service_village_county_info;
import com.data.service_village_info;

@Controller
public class village_request_controller 
{
   
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
		
		 ModelAndView mv=new ModelAndView();
		   
		   return mv;
		   
		   	
	}
	
	@RequestMapping("management/check_service_village_detail.do")
	public ModelAndView service_village_check_request()
	{
      ModelAndView mv=new ModelAndView("village_detail.jsp");
	   
	   
	   //返回
	   List<service_village_county_info> service_village_county_info_list=com.dbconnector.service_db_connector.get_service_village_county_list();
	   List<service_village_info> service_village_info_list=com.dbconnector.service_db_connector.get_service_village_info_list_by_couty_list(service_village_county_info_list);
	   mv.addObject("service_village_county_info_list", service_village_county_info_list);
	   mv.addObject("service_village_info_list",service_village_info_list);
	   return mv;
	}
	
	//管理页面乡镇下属村镇修改页面显示请求
	@RequestMapping("management/village_modify.do")
	public ModelAndView village_modify_request(
			@RequestParam(value="service_village_county_id")        int service_village_county_id
			)
	{
		ModelAndView mv=new ModelAndView("village_modify.jsp");
		//返回村镇信息
		service_village_county_info _service_village_county_info=com.dbconnector.service_db_connector.get_service_village_county_info_by_id(service_village_county_id);
		
		//返回村镇对应村庄名称，以空格分隔
		
		String str_service_village_names=com.dbconnector.service_db_connector.get_service_village_names_by_count_id(service_village_county_id);
		
		mv.addObject("service_village_county_info", _service_village_county_info);
		mv.addObject("str_service_village_names", str_service_village_names);
		
		return mv;
	}
	
	//管理页面村镇管理修改提交请求响应
	@RequestMapping("management/village_update_commit.do")
	public void  village_update_commit_request(
			
			
			@RequestParam(value="service_village_county_id")           int    service_village_county_id,
			@RequestParam(value="service_village_county_name")         String service_village_county_name,
			@RequestParam(value="service_village_county_leader")       String service_village_county_leader,
			@RequestParam(value="service_village_county_leaderphone")  String service_village_county_leaderphone,
			@RequestParam(value="str_service_village_names")           String str_service_village_names
			
			)
	{
		service_village_county_info _service_village_county_info=new service_village_county_info();
		_service_village_county_info.set_service_village_county_id(service_village_county_id);
		_service_village_county_info.set_service_village_county_name(service_village_county_name);
		_service_village_county_info.set_service_village_county_leader(service_village_county_leader);
		_service_village_county_info.set_service_village_county_leaderphone(service_village_county_leaderphone);

		
		boolean rs=com.dbconnector.service_db_connector.update_county_info(_service_village_county_info);
		
	}
}
