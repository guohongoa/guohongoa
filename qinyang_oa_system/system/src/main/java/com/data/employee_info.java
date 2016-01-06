package com.data;

//员工管理信息
public class employee_info 
{
	private int    employee_id;        //员工id
	private String employee_name;      //员工姓名
	private String employee_position;  //员工职务
	private int    employee_gender;    //员工性别   0为男性 1为女性
	private int    employee_department_id;  //员工部门id
	private int    employee_leader_id;    //部门负责人
	private String employee_addworktime;//参加工作时间
	private String employee_phone;      //员工电话
	private String employee_addtime;    //记录添加时间
	
	private String employee_birthdate;   //出生日期
    private String employee_idcode;      //身份证号
    private String employee_duty;        //员工职责
    
    private String employee_password;   //用户密码
    
    private int    employee_service_group;
    //是否为五服务小组成员，默认为0，不是五服务小组成员，
    //1为是政策法规服务五服务小组成员，
    //2为经济发展服务五服务小组成员，
    //3为和谐稳定服务五服务小组成员，
    //4为环境卫生服务五服务小组成员
    //5为文体活动服务五服务成员
    
    private String employee_str_gender;     //性别中文
    private String employee_department_name;//部门名称
    private String employee_leader_name;    //领导名称
    
    private int    service_group_id;//所属五服务小组id 不属于置空
    
    private int    is_admin;  //是否是管理员
    
    private int    department_group_id;  //人员所属部门架构id
    private String department_group_name;//人员所属部门架构名称
    
	
    public employee_info()
    {
    	employee_id=-1;
    }
    
    
	public int get_employee_id()
	{
		return this.employee_id;
	}
	
	public void set_employee_id(int employee_id)
	{
		this.employee_id=employee_id;
	}
	
	public String get_employee_name()
	{
		return this.employee_name;
	}
	
	public void set_employee_name(String employee_name)
	{
		this.employee_name=employee_name;
	}
	
	public String get_employee_position()
	{
		return this.employee_position;
	}
	
	public void set_employee_position(String employee_position)
	{
		this.employee_position=employee_position;
	}
	
	public int get_employee_gender()
	{
		return this.employee_gender;
	}
	
	public void set_employee_gender(int employee_gender)
	{
		this.employee_gender=employee_gender;
	}
	
	
	public int get_employee_department_id()
	{
		return this.employee_department_id;
	}
	
	public void set_employee_department_id(int employee_department_id)
	{
		this.employee_department_id=employee_department_id;
	}
	
	public int get_employee_leader_id()
	{
		return this.employee_leader_id;
	}
	
	public void set_employee_leader_id(int employee_leader_id)
	{
		this.employee_leader_id=employee_leader_id;
	}
	
	public String get_employee_addworktime()
	{
		return this.employee_addworktime;
	}
	
	public void set_employee_addworktime(String employee_addworktime)
	{
		this.employee_addworktime=employee_addworktime;
	}
	
	public String get_employee_phone()
	{
		return this.employee_phone;
	}
	
	public void set_employee_phone(String employee_phone)
	{
		this.employee_phone=employee_phone;
	}
	
	public String get_employee_addtime()
	{
		return this.employee_addtime;
	}
	
	public void set_employee_addtime(String employee_addtime)
	{
		this.employee_addtime=employee_addtime;
	}
	
	public String get_employee_birthdate()
	{
		return this.employee_birthdate;
	}
	
	public void set_employee_birthdate(String employee_birthdate)
	{
		this.employee_birthdate=employee_birthdate;
	}
	
	public String get_employee_idcode()
	{
		return this.employee_idcode;
	}
	
	public void set_employee_idcode(String employee_idcode)
	{
		this.employee_idcode=employee_idcode;
	}
	
	
	public String get_employee_duty()
	{
		return this.employee_duty;
	}
	
	public void set_employee_duty(String employee_duty)
	{
		this.employee_duty=employee_duty;
	}
	
	public String get_employee_password()
	{
		return this.employee_password;
	}
	
	public void set_employee_password(String employee_password)
	{
		this.employee_password=employee_password;
	}
	
	
	public int get_employee_service_group()
	{
		return this.employee_service_group;
	}
	
	public void set_employee_service_group(int employee_service_group)
	{
		this.employee_service_group=employee_service_group;
	}
	
	public String get_employee_str_gender()
	{
		return this.employee_str_gender;
	}
	
	public void set_employee_str_gender(String employee_str_gender)
	{
		this.employee_str_gender=employee_str_gender;
	}
	
	public String get_employee_department_name()
	{
		return this.employee_department_name;
	}
	
	public void set_employee_department_name(String employee_department_name)
	{
		this.employee_department_name=employee_department_name;
	}
	
	public String get_employee_leader_name()
	{
		return this.employee_leader_name;
	}
	
	public void set_employee_leader_name(String employee_leader_name)
	{
		this.employee_leader_name=employee_leader_name;
	}
	
	public int get_service_group_id()
	{
		return this.service_group_id;
	}
	
	public void set_service_group_id(int service_group_id)
	{
		this.service_group_id=service_group_id;
	}
	
	public int get_is_admin()
	{
		return this.is_admin;
	}
	
	public void set_is_admin(int is_admin)
	{
		this.is_admin=is_admin;
	}
	
	public int get_department_group_id()
	{
		return this.department_group_id;
	}
	
	public void set_department_group_id(int department_group_id)
	{
		this.department_group_id=department_group_id;
	}
	
	public String get_department_group_name()
	{
		return this.department_group_name;
	}
	
	public void set_department_group_name(String department_group_name)
	{
		this.department_group_name=department_group_name;
	}

}
