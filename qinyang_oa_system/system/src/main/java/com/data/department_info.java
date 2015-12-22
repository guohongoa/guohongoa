package com.data;

public class department_info 
{
   private int     department_id;    //部门id
   private int     department_code;  //部门编号
   private String  department_name;  //部门名称
   private String  department_parent;//上级部门
   private String  department_regulation;  //部门职责
   private String  department_leader;//部门负责人
   private String  department_addtime;//记录添加时间
   private String     department_leaderphone;//部门负责人电话
   private String  department_resourceurl;//部门业务流程
   private String  department_parentleader;
   
   private int     department_group_id;
   private String  department_group_name;
   
   public int get_department_id()
   {
	   return this.department_id;
   }
   
   public void set_department_id(int department_id)
   {
	   this.department_id=department_id;
   }
   
  public int get_department_code()
  {
	  return this.department_code;
  }
   
   
   public void set_department_code(int department_code)
   {
	   this.department_code=department_code;
   }
   
   public String get_department_name()
   {
	   return this.department_name;
   }
   
   public void set_department_name(String department_name)
   {
	   this.department_name=department_name;
   }
   
   public String get_department_parent()
   {
	   return this.department_parent;
   }
   
   public void set_department_parent(String department_parent)
   {
	   this.department_parent=department_parent;
   }
   
   public String get_department_regulation()
   {
	   return this.department_regulation;
   }
   
   public void set_department_regulation(String department_regulation)
   {
	   this.department_regulation=department_regulation;
   }
   
   public String get_department_leader()
   {
	   return this.department_leader;
   }
   
   public void set_department_leader(String department_leader)
   {
	   this.department_leader=department_leader;
   }
   
   public String get_department_addtime()
   {
	   return this.department_addtime;
   }
   
   public void set_department_addtime(String department_addtime)
   {
	   this.department_addtime=department_addtime;
   }
   
   public String get_department_leaderphone()
   {
	  return this.department_leaderphone;
   }
   
   public void set_department_leaderphone(String department_leaderphone)
   {
	   this.department_leaderphone=department_leaderphone;
   }
   
   public String get_department_resourceurl()
   {
	   return this.department_resourceurl;
   }
   
   public void set_department_resourceurl(String department_resourceurl)
   {
	   this.department_resourceurl=department_resourceurl;
   }
   
   public String get_department_parentleader()
   {
	   return this.department_parentleader;
   }
   
   public void set_department_parentleader(String department_parentleader)
   {
	   this.department_parentleader=department_parentleader;
   }
   
   public int get_department_group_id()
   {
	   return this.department_group_id;
   }
   
   public void set_department_group_id(int department_group_id)
   {
	   this.department_group_id=department_group_id;
   }
   
   public String get_department_group_name()
   {
	   return this.department_group_name;
   }
   
   public void set_department_group_name(String  department_group_name)
   {
	   this.department_group_name= department_group_name;
   }
   
   
   
}
