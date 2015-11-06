package com.dbconnector;

import java.util.List;

import com.dao.department_info_dao;
import com.dao.employee_info_dao;
import com.dao.project_info_dao;
import com.dao.regulation_info_dao;
import com.data.department_info;
import com.data.employee_info;
import com.data.project_info;
import com.data.regulation_info;
import com.mybatis.mybatis_connection_factory;


//管理页面数据库连接函数类
public class management_db_connector 
{
	public static boolean regulation_insert_db(regulation_info _regulation_info)
	{
		regulation_info_dao _regulation_info_dao=new regulation_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		boolean regulationinsert_rs=_regulation_info_dao.insert(_regulation_info);
		
		return regulationinsert_rs;
	}
	
	 public static List<regulation_info> get_regulation_info_list()
	   {
		   List<regulation_info> regulation_info_list;
		   regulation_info_dao _regulation_info_dao=new regulation_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		   regulation_info_list=_regulation_info_dao.select_all();
		   return regulation_info_list;
		   
	   }
	 
	 //部门管理数据库功能函数
	 
	 public static boolean department_insert_db(department_info _department_info)
		{
			department_info_dao _department_info_dao=new department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			
			boolean department_insert_rs=_department_info_dao.insert(_department_info);
			
			return department_insert_rs; 
			
		}
	 
	 
	 
	 public static List<department_info> get_department_info_list()
	   {
		   List<department_info> department_info_list;
		   department_info_dao _department_info_dao=new department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		   department_info_list=_department_info_dao.select_all();
		   return department_info_list;
		   
	   }
	 
	 public static void del_department_from_id(int department_id)
	 {
		 department_info_dao _department_info_dao=new department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		 _department_info_dao.delete_from_id(department_id);
	 }
	 
	 //项目管理数据库功能函数
	 public static boolean project_insert_db(project_info _project_info)
		{
			project_info_dao _project_info_dao=new project_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			
			boolean projectinsert_rs=_project_info_dao.insert(_project_info);
			
			return projectinsert_rs;
		}
	 
	 public static List<project_info> get_project_info_list()
	   {
		   List<project_info> project_info_list;
		   project_info_dao _project_info_dao=new project_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		   project_info_list=_project_info_dao.select_all();
		   return project_info_list;
		   
	   }
	 
	 //根据项目审批状态查询
	 public static List<project_info> get_project_info_list_by_project_status(int project_status)
	 {
		 List<project_info> project_info_list;
		   project_info_dao _project_info_dao=new project_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		   project_info_list=_project_info_dao.select_by_project_status(project_status);
		   return project_info_list;
	 }
	 
	 public static void del_project_from_id(int project_id)
	 {
		 project_info_dao _project_info_dao=new project_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		 _project_info_dao.delete_from_id(project_id);
	 }
	 
	 //人员管理数据库功能函数
	 public static boolean employee_insert_db(employee_info _employee_info)
		{
			employee_info_dao _employee_info_dao=new employee_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			
			boolean employeeinsert_rs=_employee_info_dao.insert(_employee_info);
			
			return employeeinsert_rs;
		}
	 
	 public static List<employee_info> get_employee_info_list()
	   {
		   List<employee_info> employee_info_list;
		   employee_info_dao _employee_info_dao=new employee_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		   employee_info_list=_employee_info_dao.select_all();
		   return employee_info_list;
		   
	   }
	 
	 public static void del_employee_from_id(int employee_id)
	 {
		 employee_info_dao _employee_info_dao=new employee_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		 _employee_info_dao.delete_from_id(employee_id);
	 }
}
