package com.data;

public class contact_add_request_info 
{
   private int     contact_add_msg_id; //添加信息id
   private int     contact_request_sender_id;//添加请求发起者id
   private String  contact_request_sender_name;//添加请求发起者姓名
   private int     contact_request_receiver_id;//添加请求接受者id
   private String  contact_request_receiver_name;//添加请求接受者姓名
   private String  cotact_reuqest_sendmsg;       //发起请求信息
   private String  contact_request_sendtime;     //添加请求发起时间
   private int     contact_request_status;       //状态信息，默认为0未添加，1为已添加
   
   public int get_contact_add_msg_id()
   {
	   return this.contact_add_msg_id;
   }
   
   public void set_contact_add_msg_id(int contact_add_msg_id)
   {
	   this.contact_add_msg_id=contact_add_msg_id;
   }
   
   public int get_contact_request_sender_id()
   {
	   return this.contact_request_sender_id;
   }
   
   public void set_contact_request_sender_id(int contact_request_sender_id)
   {
	   this.contact_request_sender_id=contact_request_sender_id;
   }
   
   public String get_contact_request_sender_name()
   {
	   return this.contact_request_sender_name;
   }
   
   public void set_contact_request_sender_name(String contact_request_sender_name)
   {
	   this.contact_request_sender_name=contact_request_sender_name;
   }
   
   public int get_contact_request_receiver_id()
   {
	   return this.contact_request_receiver_id;
   }
   
   public void set_contact_request_receiver_id(int contact_request_receiver_id)
   {
	   this.contact_request_receiver_id=contact_request_receiver_id;
   }
   
   public String get_contact_request_receiver_name()
   {
	   return this.contact_request_receiver_name;
   }
   
   public void set_contact_request_receiver_name(String contact_request_receiver_name)
   {
	   this.contact_request_receiver_name=contact_request_receiver_name;
   }
   
   public  String get_cotact_reuqest_sendmsg()
   {
	   return this.cotact_reuqest_sendmsg;
   }
   
   public void set_cotact_reuqest_sendmsg(String cotact_reuqest_sendmsg)
   {
	   this.cotact_reuqest_sendmsg= cotact_reuqest_sendmsg;
   }
   
   public String get_contact_request_sendtime()
   {
	   return this.contact_request_sendtime;
   }
   
   public void set_contact_request_sendtime(String contact_request_sendtime)
   {
	   this.contact_request_sendtime=contact_request_sendtime;
   }
   
   public int get_contact_request_status()
   {
	   return this.contact_request_status;
   }
   
   public void set_contact_request_status(int contact_request_status)
   {
	   this.contact_request_status=contact_request_status;
   }
}
