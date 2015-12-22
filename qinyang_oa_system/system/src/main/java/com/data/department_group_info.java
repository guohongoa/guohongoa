package com.data;

public class department_group_info 
{
   private int    department_group_id;    //部门所属机构id
   private String department_group_name;  //部门所属机构名称
   private int    department_group_type;  //部门所属机构类型 党委机关为0，行政机关为1
   
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
   
   public void set_department_group_name(String department_group_name)
   {
	   this.department_group_name=department_group_name;
   }
   
   public int get_department_group_type()
   {
	   return this.department_group_type;
   }
   
   public void set_department_group_type(int department_group_type)
   {
	   this.department_group_type=department_group_type;
   }
   
}
