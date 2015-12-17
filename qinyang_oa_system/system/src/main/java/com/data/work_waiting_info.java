package com.data;

public class work_waiting_info 
{
   private int     waiting_id;     //待审批消息id
   private String  work_theme;     //工作主题
   private int     work_category;  //类型，0为工作任务，1为台账，2为五服务
   private int     work_sender_id; //发送者id
   private String  work_sender;    //发送者
   private int     work_receiver_id;//接收者id
   private String  work_receiver;   //接收者
   private String  work_content;    //内容
   private String  work_addtime;    //添加时间
   private int     work_id;         //原始id
   
   public int get_waiting_id()
   {
	   return this.waiting_id;
   }
   
   public void set_waiting_id(int waiting_id)
   {
	   this.waiting_id=waiting_id;
   }
   
   public String get_work_theme()
   {
	   return this.work_theme;
   }
   
   public void set_work_theme(String work_theme)
   {
	   this.work_theme=work_theme;
   }
   
   public int get_work_category()
   {
	   return this.work_category;
   }
   
   public void set_work_category(int work_category)
   {
	   this.work_category=work_category;
   }
   
   public int get_work_sender_id()
   {
	   return this.work_sender_id;
   }
   
   public void set_work_sender_id(int work_sender_id)
   {
	   this.work_sender_id=work_sender_id;
   }
   
   public String get_work_sender()
   {
	   return this.work_sender;
   }
   
   public void set_work_sender(String work_sender)
   {
	   this.work_sender=work_sender;
   }
   
   public int get_work_receiver_id()
   {
	   return this.work_receiver_id;
   }
   
   public void set_work_receiver_id(int work_receiver_id)
   {
	   this.work_receiver_id=work_receiver_id;
   }
   
   public String get_work_receiver()
   {
	   return this.work_receiver;
   }
   
   public void set_work_receiver(String work_receiver)
   {
	   this.work_receiver=work_receiver;
   }
   
   public String get_work_content()
   {
	   return this.work_content;
   }
   
   public void set_work_content(String work_content)
   {
	   this.work_content=work_content;
   }
   public String get_work_addtime()
   {
	   return this.work_addtime;
   }
   
   public void set_work_addtime(String work_addtime)
   {
	   this.work_addtime=work_addtime;
   }
   
   public int get_work_id()
   {
	   return this.work_id;
   }
   
   public void set_work_id(int work_id)
   {
	   this.work_id=work_id;
   }
   
   
}
