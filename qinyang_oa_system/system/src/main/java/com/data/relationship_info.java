package com.data;

public class relationship_info 
{
   private int     relationship_id;           //四联用户关系id
   private int     relationship_owner_id;     //关系查询的主体，比如显示张局长所有联系人，就以张局长的id字段来检索。加入数据库的时候，AB为好友，以A、B为主体分别加入一次
   private String  relationship_owner_name;   //关系主体姓名
   private int     relationship_friend_id;    //关系客体id
   private String  relationship_friend_name;  //关系客体姓名
   private int     relationship_category;     //关系种类，owner为上级，friend为下级时，该属性为1，owner为下级，friend为上级时，该属性为2
   private String  relationship_group;        //客体所属分类子类
   private String  relationship_comment;      //用户设置用户身份等信息备注
   private String  relationship_addtime;      //关系条目添加时间
   
   public int get_relationship_id()
   {
	   return this.relationship_id;
   }
   
   public void set_relationship_id(int relationship_id)
   {
	   this.relationship_id=relationship_id;
   }
   
   public int get_relationship_owner_id()
   {
	   return this.relationship_owner_id;
   }
   
   public void set_relationship_owner_id(int relationship_owner_id)
   {
	   this.relationship_owner_id=relationship_owner_id;
   }
   
   public String get_relationship_owner_name()
   {
	   return this.relationship_owner_name;
   }
   
   public void set_relationship_owner_name(String relationship_owner_name)
   {
	   this.relationship_owner_name=relationship_owner_name;
   }
   
   public int get_relationship_friend_id()
   {
	   return this.relationship_friend_id;
   }
   
   public void set_relationship_friend_id(int relationship_friend_id)
   {
	   this.relationship_friend_id=relationship_friend_id;
   }
   
   public String get_relationship_friend_name()
   {
	   return this.relationship_friend_name;
   }
   
   public void set_relationship_friend_name(String relationship_friend_name)
   {
	   this.relationship_friend_name=relationship_friend_name;
   }
   
   public int get_relationship_category()
   {
	   return this.relationship_category;
   }
   
   public void set_relationship_category(int relationship_category)
   {
	   this.relationship_category=relationship_category;
   }
   
   public String get_relationship_group()
   {
	   return this.relationship_group;
   }
   
   public void set_relationship_group(String relationship_group)
   {
	   this. relationship_group= relationship_group;
   }
   
   public String get_relationship_comment()
   {
	   return this.relationship_comment;
   }
   
   public void set_relationship_comment(String relationship_comment)
   {
	   this.relationship_comment=relationship_comment;
   }
   
   public String get_relationship_addtime()
   {
	   return this.relationship_addtime;
   }
   
   public void set_relationship_addtime(String relationship_addtime)
   {
	   this.relationship_addtime=relationship_addtime;
   }
}
