package com.data;

//四联结点信息
public class contact_node 
{
	private String      contact_node_code;                        //四联联络结点id
	private int        contact_node_level;                    //四联联络结点层级，0为根结点，1为1层子结点，2位2层子结点
	
	private int     contact_person_department_id;            //四联联络人（机构）所属组织id
    private String  contact_person_department_name;          //四联联络人（机构）所属组织名称
    private int     contact_person_department_type;          //0为党委，联络图中显示为红，1为职能部门，联络图显示为蓝
    
    
    public String get_contact_node_code()
    {
    	return this.contact_node_code;
    }
    
    public void set_contact_node_code(String contact_node_code)
    {
    	this.contact_node_code=contact_node_code;
    }
    
    public int get_contact_node_level()
    {
    	return this.contact_node_level;
    }
    
    public void set_contact_node_level(int contact_node_level)
    {
    	this.contact_node_level=contact_node_level;
    }
    
    
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
   
    
    public int get_contact_person_department_type()
    {
    	return this.contact_person_department_type;
    }
    
    public void set_contact_person_department_type(int contact_person_department_type)
    {
    	this.contact_person_department_type=contact_person_department_type;
    }
}
