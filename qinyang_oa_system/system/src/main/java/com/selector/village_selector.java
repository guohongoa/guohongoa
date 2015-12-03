package com.selector;

public class village_selector {
	
	
		   private int     service_village_county_id;         //五服务覆盖乡镇id
		   private String  service_village_county_name;       //五服务覆盖乡镇名称
		   private String  service_village_county_leader;     //五服务覆盖乡镇负责人
		   private String  service_village_county_leaderphone;//五服务乡镇负责人电话
		   private String  service_village_county_addtime;
		   
		   private int     service_village_county_begin;   //开始的条目数
		   private int     service_village_county_num;     //查询的条目数量
		   
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
		   
		   public String get_service_village_county_leader()
		   {
			   return this.service_village_county_leader;
		   }
		   
		   public void set_service_village_county_leader(String service_village_county_leader)
		   {
			   this.service_village_county_leader=service_village_county_leader;
		   }
		   
		   public String get_service_village_county_leaderphone()
		   {
			   return this.service_village_county_leaderphone;
		   }
		   
		   public void set_service_village_county_leaderphone(String service_village_county_leaderphone)
		   {
			   this.service_village_county_leaderphone=service_village_county_leaderphone;
		   }
		   
		   public String get_service_village_county_addtime()
		   {
			   return this.service_village_county_addtime;
		   }
		   
		   
		   public void set_service_village_county_addtime(String service_village_county_addtime)
		   {
			   this.service_village_county_addtime=service_village_county_addtime;
		   }
		   
		   public int get_service_village_county_begin()
		   {
			   return this.service_village_county_begin;
		   }
		   
		   public void set_service_village_county_begin(int service_village_county_begin)
		   {
			   this.service_village_county_begin=service_village_county_begin;
		   }
		   
		   public int get_service_village_county_num()
		   {
			   return this.service_village_county_num;
		   }
		   
		   public void set_service_village_county_num(int service_village_county_num)
		   {
			   this.service_village_county_num=service_village_county_num;
		   }
		   

}
