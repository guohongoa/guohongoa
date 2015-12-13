package com.data;

//用户工作关系表
public class work_contact_info 
{
   int contact_id;  //用户工作关系id
   int owner_id;    //用户关系主方  
   int friend_id;   //用户关系客方
   int relationship_type;//关系类型，客方为主方的上级为0，下级为1
   
   String owner_name;  //用户关系主方姓名
   String friend_name; //用户关系客方姓名
   
   public int get_contact_id()
   {
	   return this.contact_id;
   }
   
   public void set_contact_id(int contact_id)
   {
	   this.contact_id=contact_id;
   }
   
   public int get_owner_id()
   {
	   return this.owner_id;
   }
   
   public void set_owner_id(int owner_id)
   {
	   this.owner_id=owner_id;
   }
   
   public int get_friend_id()
   {
	   return this.friend_id;
   }
   
   public void set_friend_id(int friend_id)
   {
	   this.friend_id=friend_id;
   }
   
   public int get_relationship_type()
   {
	   return this.relationship_type;
   }
   
   public void set_relationship_type(int relationship_type)
   {
	   this.relationship_type=relationship_type;
   }
   
   public String get_owner_name()
   {
	   return this.owner_name;
   }
   
   public void set_owner_name(String owner_name)
   {
	   this.owner_name=owner_name;
   }
   
   public String get_friend_name()
   {
	   return this.friend_name;
   }
   
   public void set_friend_name(String friend_name)
   {
	   this.friend_name=friend_name;
   }
   
   
   
   
}
