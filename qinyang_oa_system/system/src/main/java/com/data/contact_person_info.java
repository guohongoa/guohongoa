package com.data;

public class contact_person_info 
{
  private int      contact_person_id;               //四联联络人（机构）id
  private String   contact_person_name;             //四联联络人（机构）名称
  private int      contact_person_department_id;    //四联联络人（机构）所属组织id
  /*
   
          1 市委常委                  
          2 市政府 
          3 乡镇办党（工）委           
          4 市职能部门
          5 农村（社区）党员干部         
          6 镇办内设机构和基层站所    
          7 党员群众服务中心嘉言民生代办员
          8 农村(社区)党员组织          
          9 村民小组                  
          10农村（社区）事务
          11群众             
   */
  private String   contact_person_department_name;  //四联联络人（机构）所属组织名称
  private String   contact_person_addtime;          //系统添加时间
  
  public int get_contact_person_id()
  {
	  return this.contact_person_id;
  }
  
  public void set_contact_person_id(int contact_person_id)
  {
	  this.contact_person_id=contact_person_id;
  }
  
  public String get_contact_person_name()
  {
	  return this.contact_person_name;
  }
  
  public void set_contact_person_name(String contact_person_name)
  {
	  this.contact_person_name=contact_person_name;
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
  
  
  public String get_contact_person_addtime()
  {
	  return this.contact_person_addtime;
  }
  
  public void set_contact_person_addtime(String contact_person_addtime)
  {
	  this.contact_person_addtime=contact_person_addtime;
  }
  
  
}
