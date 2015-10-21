package com.data;

public class service_info 
{
  private int     service_msgid;        //服务消息id
  private int     service_category;     //安排／反馈 0为安排的服务，1为反馈的服务，2为收到的服务反馈
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
  
  //类对象读写方法
  public int get_service_msgid()
  {
	  return this.service_msgid;
  }
  
  public void set_service_msgid(int service_msgid)
  {
	  this.service_msgid=service_msgid;
  }
  
  public int get_service_category()
  {
	  return this.service_category;
	  
  }
  
  public void set_service_category(int service_category)
  {
	  this.service_category=service_category;
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
}
