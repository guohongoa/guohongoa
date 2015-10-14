package com.data;

public class mail_info 
{
	private int       mail_id;          //邮件id
	private String    mail_sender;      //邮件发送者
	private String    mail_receiver;    //邮件接受者
	private String    mail_title;       //邮件题目
	private String    mail_content;     //邮件内容
	private String    mail_addtime;     //邮件添加时间
	
 public int get_mail_id()
 {
	 return this.mail_id;
 }
 
 public void set_mail_id(int mail_id)
 {
	 this.mail_id=mail_id;
 }
 
 public String get_mail_sender()
 {
	 return this.mail_sender;
 }
 
 public void set_mail_sender(String mail_sender)
 {
	 this.mail_sender=mail_sender;
 }
 
 public String get_mail_receiver()
 {
	 return this.mail_receiver;
 }
 
 public void set_mail_receiver(String mail_receiver_)
 {
	 this.mail_receiver=mail_receiver_;
 }
 
 public String get_mail_title()
 {
	 return this.mail_title;
 }
 
 public void set_mail_title(String mail_title)
 {
	 this.mail_title=mail_title;
 }
 
 public String get_mail_content()
 {
	 return this.mail_content;
 }
 
 public void set_mail_content(String mail_content)
 {
	 this.mail_content=mail_content;
 }
 
 public String get_mail_addtime()
 {
	 return this.mail_addtime;
 }
 
 public  void set_mail_addtime(String mail_addtime)
 {
	 this.mail_addtime=mail_addtime;
 }
}
