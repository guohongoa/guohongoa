package com.data;

public class contact_info 
{
  private int     contact_id;
  private int     owner_id;
  private String  owner_name;
  private int     friend_id;
  private String  friend_name;
  private int     contact_type;
  private int     is_direct;
  
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
  
  public String get_owner_name()
  {
	  return this.owner_name;
  }
  
  public void set_owner_name(String owner_name)
  {
	  this.owner_name=owner_name;
  }
  
  public int get_friend_id()
  {
	  return this.friend_id;
  }
  
  public void set_friend_id(int friend_id)
  {
	  this.friend_id=friend_id;
  }
  
  public String get_friend_name()
  {
	  return this.friend_name;
  }
  
  public void set_friend_name(String friend_name)
  {
	  this.friend_name=friend_name;
  }
  
  public int get_contact_type()
  {
	  return this.contact_type;
  }
  
  public void set_contact_type(int contact_type)
  {
	  this.contact_type=contact_type;
  }
  
  public int get_is_direct()
  {
	  return this.is_direct;
  }
  
  public void set_is_direct(int is_direct)
  {
	  this.is_direct=is_direct;
  }
}
