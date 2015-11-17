package com.data;

//四联联络人组织信息表

public class contact_person_department_info 
{
    private int     contact_person_department_id;            //四联联络人（机构）所属组织id
    private String  contact_person_department_name;          //四联联络人（机构）所属组织名称
    
    private int     contact_person_department_sononeid;      //四联该部门下级部门一id
    private int     contact_person_department_sontwoid;      //四联该部门下级部门二id
    private int     contact_person_department_sonthreeid;    //四联该部门下级部门三id
    
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
   
    
    public int get_contact_person_department_sononeid()
    {
    	return this.contact_person_department_sononeid;
    }
    
    public void set_contact_person_department_sononeid(int contact_person_department_sononeid)
    {
    	this.contact_person_department_sononeid=contact_person_department_sononeid;
    }
        
    
    public int get_contact_person_department_sontwoid()
    {
    	return this.contact_person_department_sontwoid;
    }
    
    public void set_contact_person_department_sontwoid(int contact_person_department_sontwoid)
    {
    	this.contact_person_department_sontwoid=contact_person_department_sontwoid;
    }
    
    
    public int get_contact_person_department_sonthreeid()
    {
    	return this.contact_person_department_sonthreeid;
    }
    
    public void set_contact_person_department_sonthreeid(int contact_person_department_sonthreeid)
    {
    	this.contact_person_department_sonthreeid=contact_person_department_sonthreeid;
    }
    
}
