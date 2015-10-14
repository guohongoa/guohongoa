package com.viewcontroller;

import java.text.SimpleDateFormat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.mail_info_dao;
import com.data.mail_info;
import com.mybatis.mail_info_mybatis_connection_factory;

@Controller
public class send_email_controller
{
   @RequestMapping("send_mail.do")
   
   public void send_email_request(
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
	   SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	   String mail_addtime=df.toString();
	   
	   _mail_info.set_mail_addtime(mail_addtime);
	   
	   send_mail_insert_db(_mail_info);
	   
	   
   }
   
   private boolean send_mail_insert_db(mail_info _mail_info)  //发送邮件后插入数据库
	{
		mail_info_dao _mail_info_dao=new mail_info_dao(mail_info_mybatis_connection_factory.getSqlSessionFactory());
		
		boolean rs=_mail_info_dao.insert(_mail_info);
		return rs;
	}
}
