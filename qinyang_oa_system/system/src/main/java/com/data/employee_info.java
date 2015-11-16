package com.data;

//员工管理信息
public class employee_info 
{
	private int    employee_id;        //员工id
	private String employee_name;      //员工姓名
	private String employee_position;  //员工职务
	private String employee_gender;    //员工性别   0为男性 1为女性
	private String employee_department;//员工部门
	private String employee_leader;    //部门负责人
	private String employee_addworktime;//参加工作时间
	private int    employee_phone;      //员工电话
	private String employee_addtime;    //记录添加时间
	
	private String employee_birthdate;   //出生日期
    private String employee_idcode;      //身份证号
    private String employee_duty;        //员工职责
    
	
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
	
	public String get_employee_gender()
	{
		return this.employee_gender;
	}
	
	public void set_employee_gender(String employee_gender)
	{
		this.employee_gender=employee_gender;
	}
	
	
	public String get_employee_department()
	{
		return this.employee_department;
	}
	
	public void set_employee_department(String employee_department)
	{
		this.employee_department=employee_department;
	}
	
	public String get_employee_leader()
	{
		return this.employee_leader;
	}
	
	public void set_employee_leader(String employee_leader)
	{
		this.employee_leader=employee_leader;
	}
	
	public String get_employee_addworktime()
	{
		return this.employee_addworktime;
	}
	
	public void set_employee_addworktime(String employee_addworktime)
	{
		this.employee_addworktime=employee_addworktime;
	}
	
	public int get_employee_phone()
	{
		return this.employee_phone;
	}
	
	public void set_employee_phone(int employee_phone)
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
	

}
