package com.data;

public class contact_relationship_info 
{
 int contact_relationship_id;        //四联用户关系id
 int contact_owner_id;              //四联关系主方id
 int contact_friend_id;             //四联关系客房id
 int contact_relationship_type;    //四联关系的类型，客方为主方的上级为0，下级为1
 
 public int get_contact_relationship_id()
 {
	 return this.contact_relationship_id;
 }
 
 public void set_contact_relationship_id(int contact_relationship_id)
 {
	 this.contact_relationship_id=contact_relationship_id;
 }
 
 public int get_contact_owner_id()
 {
	 return this.contact_owner_id;
 }
 
 public void set_contact_owner_id(int contact_owner_id)
 {
	 this.contact_owner_id=contact_owner_id;
 }
 
 public int get_contact_friend_id()
 {
	return  this.contact_friend_id;
 }
 
 public void set_contact_friend_id(int contact_friend_id)
 {
	 this.contact_friend_id=contact_friend_id;
 }
 
 public int get_contact_relationship_type()
 {
	 return this.contact_relationship_type;
 }
 
 public void set_contact_relationship_type(int contact_relationship_type)
 {
	 this.contact_relationship_type=contact_relationship_type;
 }
}
