package com.viewcontroller;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.mail_info_dao;
import com.data.mail_info;
import com.mybatis.mybatis_connection_factory;

@Controller
public class send_mail_controller
{
   @RequestMapping("send_mail.do")
   
   public ModelAndView send_email_request(
		    @RequestParam(value="mail_sender") String mail_sender ,
			@RequestParam(value="mail_receiver") String mail_receiver,
            @RequestParam(value="mail_title")  String mail_title,
            @RequestParam(value="mail_content") String mail_content
		   )
   {
	   //System.out.println(mail_sender+mail_receiver+mail_title+mail_content);
	   
	   //初始化mail的object对象
	   mail_info _mail_info=new mail_info();
	   _mail_info.set_mail_sender(mail_sender);
	   _mail_info.set_mail_receiver(mail_receiver);
	   _mail_info.set_mail_title(mail_title);
	   _mail_info.set_mail_content(mail_content);
	   
	   //添加系统时间
	   Date date=new Date();
	   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	   String mail_addtime=format.format(date);
	   _mail_info.set_mail_addtime(mail_addtime);
	   
	   //发送邮件插入数据库
	   send_mail_insert_db(_mail_info);
	   
	   //数据库查询所有邮件数据
	   List<mail_info> mail_info_list=get_mail_info_list();
	   
	   /*
	   for(mail_info p_mail_info:mail_info_list)
	   {
		   System.out.println("tsss"+p_mail_info.get_mail_addtime());
	   }
	   */
	   
	   ModelAndView mv=new ModelAndView();
	   mv.addObject("mail_info_list",mail_info_list);  
	   
	   return mv;
   }
   
 //发送邮件后插入数据库
   private boolean send_mail_insert_db(mail_info _mail_info)  
	{
		mail_info_dao _mail_info_dao=new mail_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		boolean rs=_mail_info_dao.insert(_mail_info);
		return rs;
	}
   
   //数据库查询所有邮件结果
   private List<mail_info> get_mail_info_list()
   {
	   List<mail_info> mail_info_list;
	   mail_info_dao _mail_info_dao=new mail_info_dao(mybatis_connection_factory.getSqlSessionFactory());
	   mail_info_list=_mail_info_dao.select_all();
	   return mail_info_list;
	   
   }
   
 
}
