package com.viewcontroller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.regulation_info_dao;
import com.data.regulation_info;
import com.mybatis.mybatis_connection_factory;

//所有管理页面请求
@Controller
public class management_request_controller 
{
	     //规章制度插入页面
		@RequestMapping("regulation_insert.do")

		public ModelAndView regiseter_request(
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
		
	//-------------------------------------------------------------------------------
		//注册模块数据库功能函数
		
		private boolean regulation_insert_db(regulation_info _regulation_info)
		{
			regulation_info_dao _regulation_info_dao=new regulation_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			
			boolean regulationinsert_rs=_regulation_info_dao.insert(_regulation_info);
			
			return regulationinsert_rs;
		}


}
