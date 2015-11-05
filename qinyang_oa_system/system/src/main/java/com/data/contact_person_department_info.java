package com.data;

//四联联络人组织信息表

public class contact_person_department_info 
{
    private int     contact_person_department_id;//四联联络人（机构）所属组织id
    private String  contact_person_department_name;//四联联络人（机构）所属组织名称
    
    
    public int get_contact_person_department_id()
    {
  	  return this.contact_person_department_id;
    }
    
    public void set_contact_person_department_id(int contact_person_department_id)
    {
  	  this.contact_person_department_id=contact_person_department_id;
    }
    
    public String get_contact_person_department_name()
    {
  	  return this.contact_person_department_name;
    }
    
    public void set_contact_person_department_name(String contact_person_department_name)
    {
  	  this.contact_person_department_name=contact_person_department_name;
    }
}
