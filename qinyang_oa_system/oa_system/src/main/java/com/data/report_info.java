package com.data;

public class report_info 
{
   private int     report_id;              //任务id
   private String  report_sender;          //任务发起者
   private int     report_sender_id;       //任务发起者id
   private String  report_receiver;        //任务接受着
   private int     report_receiver_id;     //任务接受着id
   private String  report_title;           //任务主题
   private String  report_content;         //任务内容
   private String  report_addtime;        //任务添加时间
   
   public int get_report_id()
   {
	   return this.report_id;
   }
   
   public void set_report_id(int report_id)
   {
	   this.report_id=report_id;
   }
   
   public String get_report_sender()
   {
	   return this.report_sender;
   }
   
   public void set_report_sender(String report_sender)
   {
	   this.report_sender=report_sender;
   }
   
   public int get_report_sender_id()
   {
	   return this.report_sender_id;
   }
   
   public void set_report_sender_id(int  report_sender_id)
   {
	   this.report_sender_id=report_sender_id;
   }
   
   public String get_report_receiver()
   {
	   return this.report_receiver;
   }
   
   public void set_report_receiver(String report_receiver)
   {
	   this.report_receiver=report_receiver;
   }
   
   public int get_report_receiver_id()
   {
	   return this.report_receiver_id;
   }
   
   public void set_report_receiver_id(int report_receiver_id)
   {
	   this.report_receiver_id=report_receiver_id;
   }
   
   public String get_report_title()
   {
	   return this.report_title;
   }
   
   public void set_report_title(String report_title)
   {
	   this.report_title=report_title;
   }
   
   public String get_report_content()
   {
	   return this.report_content;
   }
   
   public void set_report_content(String report_content)
   {
	   this.report_content=report_content;
   }
   
   
   public String get_report_addtime()
   {
	   return this.report_addtime;
   }
   
   public void set_report_addtime(String report_addtime)
   {
	   this.report_addtime=report_addtime;
   }
   
   
}
 
