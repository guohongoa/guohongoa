package com.data;

public class system_user_info 
{
  private int      user_id;               //数据库用户id
  private String   user_name;             //系统用户名
  private String   user_password;         //系统密码
  
  //读写方法
  public int get_user_id()
  {
	  return this.user_id;
  }
  
  public void set_user_id(int user_id)
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
  
  public String get_user_password()
  {
	  return this.user_password;
  }
  
  public void set_user_password(String user_password)
  {
	  this.user_password=user_password;
  }
  
}
