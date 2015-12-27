package com.data;

public class msg_info 
{
  private int     msg_id;            //消息id
  private int     msg_owner_id;      //消息拥有者id
  private String  msg_owner_name;    //消息拥有名称
  private int     msg_type;          //消息类型
  private String  msg_addtime;       //消息添加时间
  private String  msg_content;       //消息内容
  private int     msg_status;        //消息状态
  
  private int     msg_oid;           //消息原始id
  private int     msg_sender_id;     //消息发送者id
  private String  msg_sender;
  
  public int get_msg_id()
  {
	  return this.msg_id;
  }
  
  public void set_msg_id(int msg_id)
  {
	  this.msg_id=msg_id;
  }
  
  public int get_msg_owner_id()
  {
	  return this.msg_owner_id;
  }
  
  public void set_msg_owner_id(int msg_owner_id)
  {
	  this.msg_owner_id=msg_owner_id;
  }
  
  public String  get_msg_owner_name()
  {
	  return this.msg_owner_name;
  }
  
  public void set_msg_owner_name(String msg_owner_name)
  {
	  this.msg_owner_name=msg_owner_name;
  }
  
  public int  get_msg_type()
  {
	  return this.msg_type;
  }
  
  public void set_msg_type(int msg_type)
  {
	  this.msg_type=msg_type;
  }
  
  public String get_msg_addtime()
  {
	  return this.msg_addtime;
  }
  
  public void set_msg_addtime(String msg_addtime)
  {
	  this.msg_addtime=msg_addtime;
  }
  
  public String get_msg_content()
  {
	  return this.msg_content;
  }
  
  public void set_msg_content(String msg_content)
  {
	  this.msg_content=msg_content;
  }
  
  public  int get_msg_status()
  {
	  return this.msg_status;
  }
  
  public void set_msg_status(int  msg_status)
  {
	  this.msg_status=msg_status;
  }
  
  public int get_msg_oid()
  {
	  return this.msg_oid;
  }
  
  public void set_msg_oid(int msg_oid)
  {
	  this.msg_oid=msg_oid;
  }
  
  public int get_msg_sender_id()
  {
	  return this.msg_sender_id;
  }
  
  public void set_msg_sender_id(int msg_sender_id)
  {
	  this.msg_sender_id=msg_sender_id;
  }
  
  public String get_msg_sender()
  {
	  return this.msg_sender;
  }
  
  public void set_msg_sender(String msg_sender)
  {
	  this.msg_sender=msg_sender;
  }
  
  
  
  
}
