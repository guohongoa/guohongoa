package com.data;

public class work_info 
{
  private int     work_id;          //工作任务id
  private int     work_sender_id;   //工作发送人id
  private String  work_sender;   //工作任务发送人
  private int     work_receiver_id; //工作接受者id
  private String  work_receiver; //工作接受者
  private String  work_theme;    //工作主题
  private String  work_begintime; //工作开始时间
  private String  work_endtime;   //工作结束时间
  private String  work_content;   //工作内容
  private int     work_status;    //0为默认未审批，1为已审批，，2为未通过
  private int     work_percentage; //完成工作百分比，0为0%,1为10%，2为20%，依次类推，10为100%
  private int     work_type;      //工作消息种类，0为安排工作，1为反馈工作，2为安排的反馈
  private String  work_target;    //工作目标
  private String  work_addtime;   //工作添加时间
  private String  work_file_url;   //文件url
  
  public int get_work_id()
  {
	  return this.work_id;
  }
  
  public void set_work_id(int work_id)
  {
	  this.work_id=work_id;
  }
  
  public int get_work_sender_id()
  {
	  return this.work_sender_id;
  }
  
  public void set_work_sender_id(int work_sender_id)
  {
	  this.work_sender_id=work_sender_id;
  }
  
  public String  get_work_sender()
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
  
  public String get_work_theme()
  {
	  return work_theme;
  }
  
  public void set_work_theme(String  work_theme)
  {
	  this.work_theme=work_theme;
  }
  
  public String get_work_begintime()
  {
	  return this.work_begintime;
  }
  
  public void set_work_begintime(String work_begintime)
  {
	  this.work_begintime=work_begintime;
  }
  
  public String get_work_endtime()
  {
	  return this.work_endtime;
  }
  
  public void set_work_endtime(String work_endtime)
  {
	  this.work_endtime=work_endtime;
  }
  
  public String get_work_content()
  {
	  return this.work_content;
  }
  
  public void set_work_content(String work_content)
  {
	  this.work_content=work_content;
  }
  
  public int get_work_status()
  {
	  return this.work_status;
  }
  
  public void set_work_status(int work_status)
  {
	  this.work_status=work_status;
  }
  
  public int get_work_percentage()
  {
	  return this.work_percentage;
  }
  
  public void set_work_percentage(int work_percentage)
  {
	  this.work_percentage=work_percentage;
  }
  
  public int get_work_type()
  {
	  return this.work_type;
  }
  
  public void set_work_type(int work_type)
  {
	  this.work_type=work_type;
  }
  
  public String get_work_target()
  {
	  return this.work_target;
  }
  
  public void set_work_target(String work_target)
  {
	  this.work_target=work_target;
  }
  
  public String get_work_addtime()
  {
	  return this.work_addtime;
  }
  
  public void set_work_addtime(String work_addtime)
  {
	  this.work_addtime=work_addtime;
  }
  
  public String get_work_file_url()
  {
	  return this.work_file_url;
  }
  
  public void set_work_file_url(String work_file_url)
  {
	  this.work_file_url=work_file_url;
  }
  
}
