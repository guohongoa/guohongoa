package com.viewcontroller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.data.service_info;
import com.data.work_record_info;

//台账模块请求响应模块类
@Controller
public class record_request_controller 
{
		//接收服务发送表单信息
		@RequestMapping("work/record_add.do")
		public ModelAndView record_add_request(
				@RequestParam(value="work_record_creater")    String    work_record_creater ,    //台账建帐人
			    @RequestParam(value="work_record_position")   String    work_record_position,    //台账创建人职务
				@RequestParam(value="work_record_department") String    work_record_department,  //台账创建人部门
				@RequestParam(value="work_record_leader")     String    work_record_leader,      //台账创建人上级联系人
	            @RequestParam(value="work_record_communist")  String    work_record_communist,   //党员联系人姓名
	            @RequestParam(value="work_record_date")       String    work_record_date,        //建帐日期
	            @RequestParam(value="work_record_plan")       String    work_record_plan,        //台账工作计划
	            @RequestParam(value="work_record_effect")     String    work_record_effect       //台账落实情况
				)
		{
			//初始化work_record_info对象
			work_record_info _work_record_info=new work_record_info();
			_work_record_info.set_work_record_creater(work_record_creater);
			_work_record_info.set_work_record_position(work_record_position);
			_work_record_info.set_work_record_department(work_record_department);
			_work_record_info.set_work_record_leader(work_record_leader);
			_work_record_info.set_work_record_communist(work_record_communist);
			_work_record_info.set_work_record_date(work_record_date);
			_work_record_info.set_work_record_plan(work_record_plan);
			_work_record_info.set_work_record_effect(work_record_effect);
            
			
			
			//添加系统时间
			   Date date=new Date();
			   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			   String record_addtime=format.format(date);
			   _work_record_info.set_work_record_addtime(record_addtime);
			   
			   com.dbconnector.record_db_connector.record_insert_db(_work_record_info);
			
			
			//返回插入结果
			
			 ModelAndView mv=new ModelAndView();
			   
			 return mv;
			   
			   	
		}
}
