
package com.viewcontroller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.relationship_info_dao;
import com.data.relationship_info;
import com.mybatis.mybatis_connection_factory;


	@Controller
	public class relationship_request_controller
	{
		
		@RequestMapping("contact/relationship_add.do")
		public ModelAndView send_task_request(
				@RequestParam(value="relationship_owner_id")     int    relationship_owner_id , //主方id
			    @RequestParam(value="relationship_owner_name")  String relationship_owner_name,
				@RequestParam(value="relationship_friend_id")    int    relationship_friend_id,
				@RequestParam(value="relationship_friend_name")  String relationship_friend_name,
	            @RequestParam(value="relationship_category")     int    relationship_category
				)
		{
			//初始化relationship_info对象
		    relationship_info _relationship_info=new relationship_info();
		    _relationship_info.set_relationship_owner_id(relationship_owner_id);
		    _relationship_info.set_relationship_owner_name(relationship_owner_name);
		    _relationship_info.set_relationship_friend_name(relationship_friend_name);
		    _relationship_info.set_relationship_friend_id(relationship_friend_id);
		    _relationship_info.set_relationship_category(relationship_category);
			
			//添加系统时间
			   Date date=new Date();
			   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			   String relationship_addtime=format.format(date);
			   _relationship_info.set_relationship_addtime(relationship_addtime);
			   //插入数据库
			  relationship_insert_db(_relationship_info);
			
			
			
			
			 ModelAndView mv=new ModelAndView();
			  
			   
			   return mv;
			   
			   	
		}
		
		//发起任务时，将任务信息加入数据库
		private boolean relationship_insert_db(relationship_info _relationship_info)  
		{
			relationship_info_dao _relationship_info_dao=new relationship_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			
			boolean rs=_relationship_info_dao.insert(_relationship_info);
			return rs;
		}
		

}
