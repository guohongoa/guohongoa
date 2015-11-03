package com.data;

public class service_village_county_info 
{
   private int     service_village_county_id;     //五服务覆盖乡镇id
   private String  service_village_county_name;   //五服务覆盖乡镇名称
   private String  service_village_county_addtime;
   
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
   
   public String get_service_village_county_addtime()
   {
	   return this.service_village_county_addtime;
   }
   
   public void set_service_village_county_addtime(String service_village_county_addtime)
   {
	   this.service_village_county_addtime=service_village_county_addtime;
   }
}
