package com.data;

public class work_record_info 
{
  private int    work_record_id;         //台账记录id
  private String work_record_creator;    //台账建帐人
  private int    work_record_creatorid;    //台账建帐人id
  private String work_record_position;   //台账创建人职务
  private String work_record_department; //台账创建人部门
  private String work_record_leader;     //台账创建人上级联系人
  private int    work_record_leader_id;  //上级联系人id
  private String work_record_communist;  //台账党员联系人姓名
  private String work_record_date;       //台账建帐日期
  private String work_record_plan;       //台账工作计划
  private String work_record_effect;     //台账工作落实情况
  private String work_record_addtime;    //系统添加时间
  private String work_record_theme;      //台账主题
  
  private int    work_record_status;     //台账状态，0为未审批，1为已通过，2为未通过
  private String work_record_comment;    //审批附言
  
  public int get_work_record_id()
  {
	  return this.work_record_id;
  }
  
  public void set_work_record_id(int work_record_id)
  {
	  this.work_record_id=work_record_id;
  }
  
  public String get_work_record_creator()
  {
	  return this.work_record_creator;
  }
  
  public void set_work_record_creator(String work_record_creator)
  {
	  this.work_record_creator=work_record_creator;
  }
  
  public int get_work_record_creatorid()
  {
	  return this.work_record_creatorid;
  }
  
  public void set_work_record_creatorid(int work_record_creatorid)
  {
	  this.work_record_creatorid=work_record_creatorid;
  }
  
  public String get_work_record_position()
  {
	  return this.work_record_position;
  }
  
  public void set_work_record_position(String work_record_position)
  {
	  this.work_record_position=work_record_position;
  }
  
  public String get_work_record_department()
  {
	  return this.work_record_department;
  }
  
  public void set_work_record_department(String work_record_department)
  {
	  this.work_record_department=work_record_department;
  }
  
  public String get_work_record_leader()
  {
	  return this.work_record_leader;
  }
  
  public void set_work_record_leader(String work_record_leader)
  {
	  this.work_record_leader=work_record_leader;
  }
  
  public String get_work_record_communist()
  {
	  return this.work_record_communist;
  }
  
  public void set_work_record_communist(String work_record_communist)
  {
	  this.work_record_communist=work_record_communist;
  }
  
  public String get_work_record_date()
  {
	  return this.work_record_date;
  }
  
  public void set_work_record_date(String work_record_date)
  {
	  this.work_record_date=work_record_date;
  }
  
  public String get_work_record_plan()
  {
	  return this.work_record_plan;
  }
  
  public void set_work_record_plan(String work_record_plan)
  {
	  this.work_record_plan=work_record_plan;
  }
  
  public String get_work_record_effect()
  {
	  return this.work_record_effect;
  }
  
  public void set_work_record_effect(String work_record_effect)
  {
	  this.work_record_effect=work_record_effect;
  }
  
  public String get_work_record_addtime()
  {
	  return this.work_record_addtime;
  }
  
  public void set_work_record_addtime(String work_record_addtime)
  {
	  this.work_record_addtime=work_record_addtime;
  }
  
  public String get_work_record_theme()
  {
	  return this.work_record_theme;
  }
  
  public void set_work_record_theme(String work_record_theme)
  {
	  this.work_record_theme=work_record_theme;
  }
  
  public int get_work_record_leader_id()
  {
	  return this.work_record_leader_id;
  }
  
  public void set_work_record_leader_id(int work_record_leader_id)
  {
	  this.work_record_leader_id=work_record_leader_id;
  }
  
  public  int get_work_record_status()
  {
	  return this. work_record_status;
  }
  
  public void set_work_record_status(int work_record_status)
  {
	  this. work_record_status= work_record_status;
  }
  
  public String get_work_record_comment()
  {
	  return this.work_record_comment;
  }
  
  public void set_work_record_comment(String work_record_comment)
  {
	  this.work_record_comment=work_record_comment;
  }
  
}
