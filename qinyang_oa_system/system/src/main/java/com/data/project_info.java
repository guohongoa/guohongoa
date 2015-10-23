package com.data;
//项目管理信息
public class project_info 
{
   private int    project_id;   //项目id
   private int    project_code; //项目编号
   private String project_name; //项目名称
   private String project_leader;//项目负责人
   private int    project_leaderphone;//项目负责人电话
   private String project_department;//项目部门
   private String project_resourceurl;//项目资源地址
   private String project_addtime;    //项目添加时间
   private String project_begintime;  //项目开始时间
   private String project_endtime;    //项目结束时间
   private String project_content;    //项目内容
   
   private int    project_status;     //项目状态，0为未审批，1为已审批
   private String project_commiter;   //项目提交人
   private String project_approver;   //项目审批人
   private String project_approvetime;//项目审批时间
   
   
   public int get_project_id()
   {
	   return this.project_id;
   }
   
   public void set_project_id(int project_id)
   {
	   this.project_id=project_id;
   }
   
   public int get_project_code()
   {
	   return this.project_code;
   }
   
   public void set_project_code(int project_code)
   {
	   this.project_code=project_code;
   }
   
   public String get_project_name()
   {
	   return this.project_name;
   }
   
   public void set_project_name(String project_name)
   {
	   this.project_name=project_name;
   }
   
   public String get_project_leader()
   {
	   return this.project_leader;
   }
   
   public void set_project_leader(String project_leader)
   {
	   this.project_leader=project_leader;
   }
   
   public int get_project_leaderphone()
   {
	   return this.project_leaderphone;
   }
   
   public void set_project_leaderphone(int project_leaderphone)
   {
	   this.project_leaderphone=project_leaderphone;
   }
   
   public String get_project_department()
   {
	   return this. project_department;
   }
   
   public void set_project_department(String  project_department)
   {
	   this. project_department= project_department;
   }
   
   public String get_project_resourceurl()
   {
	   return project_resourceurl;
   }
   
   public void set_project_resourceurl(String project_resourceurl)
   {
	   this.project_resourceurl=project_resourceurl;
   }
   
   public String get_project_addtime()
   {
	   return this.project_addtime;
   }
   
   public void set_project_addtime(String project_addtime)
   {
	   this.project_addtime=project_addtime;
   }
   
   public String get_project_begintime()
   {
	   return this.project_begintime;
   }
   
   public void set_project_begintime(String project_begintime)
   {
	   this.project_begintime=project_begintime;
   }
   
   public String get_project_endtime()
   {
	  return this.project_endtime; 
   }
   
   public void set_project_endtime(String project_endtime)
   {
	   this.project_endtime=project_endtime;
   }
   
   public String get_project_content()
   {
	   return this.project_content;
   }
   
   public void set_project_content(String project_content)
   {
	   this.project_content=project_content;
   }
   
   public int get_project_status()
   {
	   return this.project_status;
   }
   
   public void set_project_status(int project_status)
   {
	   this.project_status=project_status;
   }
   
   public String get_project_commiter()
   {
	   return this.project_commiter;
   }
   
   public void set_project_commiter(String project_commiter)
   {
	   this.project_commiter=project_commiter;
   }
   
   public String get_project_approver()
   {
	   return this.project_approver;
   }
   
   public void set_project_approver(String project_approver)
   {
	   this.project_approver=project_approver;
   }
   
   public String get_project_approvetime()
   {
	   return this. project_approvetime;
   }
   
   public void set_project_approvetime(String project_approvetime)
   {
	   this. project_approvetime=project_approvetime;
   }
}
