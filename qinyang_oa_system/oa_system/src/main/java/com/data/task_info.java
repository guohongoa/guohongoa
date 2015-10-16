package com.data;

public class task_info 
{
   private int     task_id;              //任务id
   private String  task_sender;          //任务发起者
   private int     task_sender_id;       //任务发起者id
   private String  task_receiver;        //任务接受着
   private int     task_receiver_id;     //任务接受着id
   private String  task_title;           //任务主题
   private String  task_content;         //任务内容
   private int     task_status;          //任务状态,0为未完成，1为已完成
   private String  task_addtime;        //任务添加时间
   
   public int get_task_id()
   {
	   return this.task_id;
   }
   
   public void set_task_id(int task_id)
   {
	   this.task_id=task_id;
   }
   
   public String get_task_sender()
   {
	   return this.task_sender;
   }
   
   public void set_task_sender(String task_sender)
   {
	   this.task_sender=task_sender;
   }
   
   public int get_task_sender_id()
   {
	   return this.task_sender_id;
   }
   
   public void set_task_sender_id(int  task_sender_id)
   {
	   this.task_sender_id=task_sender_id;
   }
   
   public String get_task_receiver()
   {
	   return this.task_receiver;
   }
   
   public void set_task_receiver(String task_receiver)
   {
	   this.task_receiver=task_receiver;
   }
   
   public int get_task_receiver_id()
   {
	   return this.task_receiver_id;
   }
   
   public void set_task_receiver_id(int task_receiver_id)
   {
	   this.task_receiver_id=task_receiver_id;
   }
   
   public String get_task_title()
   {
	   return this.task_title;
   }
   
   public void set_task_title(String task_title)
   {
	   this.task_title=task_title;
   }
   
   public String get_task_content()
   {
	   return this.task_content;
   }
   
   public void set_task_content(String task_content)
   {
	   this.task_content=task_content;
   }
   
   public int get_task_status()
   {
	   return this.task_status;
   }
   
   public void set_task_status(int task_status)
   {
	   this.task_status=task_status;
   }
   
   public String get_task_addtime()
   {
	   return this.task_addtime;
   }
   
   public void set_task_addtime(String task_addtime)
   {
	   this.task_addtime=task_addtime;
   }
   
   
}
 