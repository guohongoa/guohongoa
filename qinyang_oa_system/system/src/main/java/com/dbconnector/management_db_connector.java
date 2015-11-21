package com.dbconnector;

import java.util.List;

import com.dao.department_info_dao;
import com.dao.employee_info_dao;
import com.dao.service_group_info_dao;
import com.dao.service_info_dao;
import com.dao.service_village_county_info_dao;
import com.data.department_info;
import com.data.employee_info;
import com.data.service_group_info;
import com.data.service_info;
import com.mybatis.mybatis_connection_factory;


//管理页面数据库连接函数类
public class management_db_connector 
{
	 
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
	 
	 public static department_info get_department_info_by_id(int department_id)
	 {
		 department_info_dao _department_info_dao=new department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		 department_info _department_info=_department_info_dao.select_by_department_id(department_id);
			return _department_info;
	 }
	 
	 public static void del_department_from_id(int department_id)
	 {
		 department_info_dao _department_info_dao=new department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		 _department_info_dao.delete_from_id(department_id);
	 }
	
	 public static boolean update_department_info(department_info _department_info)
	 {
		    boolean rs;
			department_info_dao _department_info_dao=new department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			rs=_department_info_dao.update_department_info(_department_info);
			
		    return rs;
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
	 
	 //根据员工id，查询员工信息，用于修改
	 public static employee_info get_employee_info_by_id(int employee_id)
	 {
		 employee_info_dao _employee_info_dao=new employee_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		 employee_info _employee_info=_employee_info_dao.select_by_employee_id(employee_id);
	     return _employee_info;
	 }
	 
	 public static boolean update_employee_info(employee_info _employee_info)
	 {
		     boolean rs;
		     employee_info_dao _employee_info_dao=new employee_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			rs=_employee_info_dao.update_employee_info(_employee_info);
			
		    return rs;
	 }
	 
	 //-------------------------------------------------------
	 //五服务小组
	 
	 public static boolean service_group_insert_db(service_group_info _service_group_info)
	 {
		    service_group_info_dao _service_group_info_dao=new service_group_info_dao(mybatis_connection_factory.getSqlSessionFactory());
			
			boolean serviceinsert_rs=_service_group_info_dao.insert( _service_group_info);
			
			return serviceinsert_rs;
	 }
	 
	 public static List<service_group_info> get_service_group_list()
	 {
		 List<service_group_info> service_group_info_list;
		   service_group_info_dao _service_group_info_dao=new service_group_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		   service_group_info_list=_service_group_info_dao.select_all();
		   return service_group_info_list;
	 }
	 
	 public static service_group_info get_service_group_info_by_id(int service_group_id)
	 {
		 service_group_info_dao _service_group_info_dao=new service_group_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		 service_group_info _service_group_info=_service_group_info_dao.select_by_id(service_group_id);
			return _service_group_info;
	 }
}
