package com.data;
//用户的个人资料，非系统级资料
public class user_info 
{
   private int     user_id;             //用户id
   private String  user_name;           //用户姓名
   private String  user_position;       //用户职位
   private int     user_position_level; //用户所属级别
   private String  user_department;     //用户部门
   
   
   public int get_user_id()
   {
	   return this.user_id;
   }
   
   public void set_user_id(int  user_id)
   {
	   this.user_id=user_id;
   }
   
   public String get_user_name()
   {
	   return this.user_name;
   }
   
   public void set_user_name(String user_name)
   {
	   this.user_name=user_name;
   }
   
   public String get_user_position()
   {
	   return this.user_position;
   }
   
   public void set_user_position(String user_position)
   {
	   this.user_position=user_position;
   }
   
   public int get_user_position_level()
   {
	   return this.user_position_level;
   }
   
   public void set_user_position_level(int user_position_level)
   {
	   this.user_position_level=user_position_level;
   }
   
   public String get_user_department()
   {
	   return this.user_department;
   }
   
   public void set_user_department(String user_department)
   {
	   this.user_department=user_department;
   }
   
   
}
