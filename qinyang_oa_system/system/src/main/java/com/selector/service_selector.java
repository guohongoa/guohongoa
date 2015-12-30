package com.selector;

public class service_selector 
{
   //service_info对象信息
	
    private int     service_msgid;        //服务消息id
	private String  service_theme;        //服务主题
	private int     service_type;         //0为法政法规服务，1为经济发展服务，2为和谐稳定服务，3为环境卫生服务，4为文体活动服务
	private int     service_sender_id;    //服务发送人id
	private String  service_sender;       //服务信息发送人
	private int     service_receiver_id;  //服务信息接收人id
	private String  service_receiver;     //服务信息接收人
	private String  service_addtime;      //服务发送时间
	private String  service_begintime;    //服务开始时间
	private String  service_endtime;      //服务截至时间
	private String  service_content;      //服务的内容
	private String  service_sender_phone; //服务联系人电话
	private String  service_target;       //服务目标
	private int     service_status;       //服务审批状态 0为等待审批 1为已通过，2为未通过
	private String  service_comment;      //服务审批评语
	private int     service_village_id;   //所属村庄id
	private String  service_village_name; //所属村庄名称	
	
    private int    service_begin;         //开始的条目数
    private int    service_num;           //查询的条目数量
    
    private int    service_published;     //是否发布
   
   
   public int get_servcie_begin()
   {
	   return this.service_begin;
   }
   
   public void set_servcie_begin(int servcie_begin)
   {
	   this.service_begin=servcie_begin;
   }
   
   public int get_service_num()
   {
	   return this.service_num;
   }
   
   public void set_service_num(int service_num)
   {
	   this.service_num=service_num;
   }
   
   public int get_service_msgid()
   {
 	  return this.service_msgid;
   }
   
   public void set_service_msgid(int service_msgid)
   {
 	  this.service_msgid=service_msgid;
   }
   
   public String get_service_theme()
   {
 	  return this.service_theme;
   }
   
   public void set_service_theme(String service_theme)
   {
 	  this.service_theme=service_theme;
   }
   
   public int get_service_type()
   {
 	  return this.service_type;
   }
   
   public void set_service_type(int service_type)
   {
 	  this.service_type=service_type;
   }
   
   public int get_service_sender_id()
   {
 	  return service_sender_id;
   }
   
   public void set_service_sender_id(int service_sender_id)
   {
 	  this.service_sender_id=service_sender_id;
   }
   
   public String get_service_sender()
   {
 	  return this.service_sender;
   }
   
   public void set_service_sender(String service_sender)
   {
 	  this.service_sender=service_sender;
   }
   
   public int get_service_receiver_id()
   {
 	  return this.service_receiver_id;
   }
   
   public void set_service_receiver_id(int service_receiver_id)
   {
 	  this.service_receiver_id=service_receiver_id;
   }
   
   public String get_service_receiver()
   {
 	  return service_receiver;
   }
   
   public void set_service_receiver(String service_receiver)
   {
 	  this.service_receiver=service_receiver;
   }
   
   public String get_service_addtime()
   {
 	  return this.service_addtime;
   }
   
   public void set_service_addtime(String service_addtime)
   {
 	  this.service_addtime=service_addtime;
   }
   
   public String get_service_begintime()
   {
 	  return this.service_begintime;
   }
   
   public void set_service_begintime(String service_begintime)
   {
 	  this.service_begintime=service_begintime;
   }
   
   public String get_service_endtime()
   {
 	  return this.service_endtime;
   }
   
   public void set_service_endtime(String service_endtime)
   {
 	  this.service_endtime=service_endtime;
   }
   
   public String get_service_content()
   {
 	  return this.service_content;
   }
   
   public void set_service_content(String service_content)
   {
 	  this.service_content=service_content;
   }
   
   public String get_service_sender_phone()
   {
 	  return this.service_sender_phone;
   }
   
   public void set_service_sender_phone(String service_sender_phone)
   {
 	  this.service_sender_phone=service_sender_phone;
   }
   
   public String get_service_target()
   {
 	  return this.service_target;
   }
   
   public void set_service_target(String service_target)
   {
 	  this.service_target=service_target;
   }
   
   public int get_service_status()
   {
 	  return this.service_status;
   }
   
   public void set_service_status(int service_status)
   {
 	  this.service_status=service_status;
   }
   
   public String get_service_comment()
   {
 	  return this.service_comment;
   }
   
   public void set_service_comment(String service_comment)
   {
 	  this.service_comment=service_comment;
   }
   
   public int get_service_village_id()
   {
 	  return this.service_village_id;
   }
   
   public void set_service_village_id(int service_village_id)
   {
 	  this.service_village_id=service_village_id;
   }
   
   public String get_service_village_name()
   {
 	  return this.service_village_name;
   }
   
   public void set_service_village_name(String service_village_name)
   {
 	  this.service_village_name=service_village_name;
   }
   
   public int get_service_published()
   {
	   return this.service_published;
   }
   
   public void set_service_published(int service_published)
   {
	   this.service_published=service_published;
   }
   
}
