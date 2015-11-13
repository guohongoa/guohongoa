package com.viewcontroller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.data.service_village_county_info;

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
}
