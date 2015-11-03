package com.data;

public class service_village_info 
{
  private int      service_village_id;         //五服务覆盖村庄id
  private String   service_village_name;       //五服务覆盖村庄名称
  private int      service_village_county_id;  //五服务村庄所属乡镇id
  private String   service_village_county_name;//五服务村庄所属乡镇
  private String   service_village_addtime;    //五服务覆盖村庄添加时间
  
  public int get_service_village_id()
  {
	  return this.service_village_id;
  }
  
  public void set_service_village_id(int service_village_id)
  {
	  this.service_village_id=service_village_id;
  }
  
  public String get_service_village_name()
  {
	  return this.service_village_name;
  }
  
  public void set_service_village_name(String service_village_name)
  {
	  this.service_village_name=service_village_name;
  }
  
  public int get_service_village_county_id()
  {
	  return this.service_village_county_id;
  }
  
  public void set_service_village_county_id(int service_village_county_id)
  {
	  this.service_village_county_id=service_village_county_id;
  }
  
  public String get_service_village_county_name()
  {
	  return this.service_village_county_name;
  }
  
  public void set_service_village_county_name(String service_village_county_name)
  {
	  this.service_village_county_name=service_village_county_name;
  }
  
  public String get_service_village_addtime()
  {
	  return this.service_village_addtime;
  }
  
  public void set_service_village_addtime(String service_village_addtime)
  {
	  this.service_village_addtime=service_village_addtime;
  }
  
}
