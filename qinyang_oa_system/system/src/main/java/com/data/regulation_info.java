package com.data;

//管理模块下属制度子模块

public class regulation_info 
{
  private  int     regulation_id;          //制度id
  private  String  regulation_department;  //制度所属部门
  private  String  regulation_title;       //制度标题
  private  String  regulation_content;     //制度内容
  private  String  regulation_resourceurl; //制度资源url的json文件
  private  String  regulation_addtime;    //制度添加时间
  
  public int get_regulation_id()
  {
	  return this.regulation_id;
  }
  
  public void set_regulation_id(int regulation_id)
  {
	  this.regulation_id=regulation_id;
  }
  
  public String get_regulation_department()
  {
	  return this.regulation_department;
  }
  
  public void set_regulation_department(String regulation_department)
  {
	  this.regulation_department=regulation_department;
  }
  
  public String get_regulation_title()
  {
	  return this.regulation_title;
  }
  
  public void set_regulation_title(String regulation_title)
  {
	  this.regulation_title=regulation_title;
  }
  
  public String get_regulation_content()
  {
	  return this.regulation_content;
  }
  
  public void set_regulation_content(String regulation_content)
  {
	  this.regulation_content=regulation_content;
	  
  }
  
  public String get_regulation_resourceurl()
  {
	  return this.regulation_resourceurl;
  }
  
  public void set_regulation_resourceurl(String regulation_resourceurl)
  {
	this.regulation_resourceurl=regulation_resourceurl;  
  }
  
  public String get_regulation_addtime()
  {
	  return this.regulation_addtime;
  }
  
  public void set_regulation_addtime(String regulation_addtime)
  {
	  this.regulation_addtime=regulation_addtime;
  }


  
}
