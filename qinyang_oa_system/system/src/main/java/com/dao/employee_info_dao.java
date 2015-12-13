package com.dao;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.contact_person_department_info;
import com.data.contact_person_info;
import com.data.department_info;
import com.data.employee_info;
import com.data.system_user_info;
import com.selector.department_selector;
import com.selector.employee_selector;

//员工信息表数据库映射类
public class employee_info_dao 
{
	
	private SqlSessionFactory sqlSessionFactory=null;

	//构造函数，初始化数据库连接器
	public employee_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public int insert(employee_info _employee_info)
	 {
	       int employee_id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            session.insert("employee_info.insert", _employee_info);
	           
	            employee_id=_employee_info.get_employee_id();
	            System.out.println("ooodafdfa"+employee_id);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_employee_info+") --> "+_employee_info.get_employee_id());
	        return employee_id;
	        
	  }
	 
	 //根据员工id查询员工信息
	  public employee_info select_by_employee_id(int employee_id)
	  {
		  employee_info _employee_info = null;
	        SqlSession session = sqlSessionFactory.openSession();
	        try {
	            _employee_info = session.selectOne("employee_info.select_by_employee_id", employee_id);
	 
	        } finally {
	            session.close();
	        }
	        System.out.println("selectByUserid("+employee_id+") --> "+_employee_info);
	        return _employee_info;
	  }
	  
	  //查询所有员工信息
	  public List<employee_info> select_all()
		 {
			 List<employee_info> employee_info_list=null;
			 SqlSession session=this.sqlSessionFactory.openSession();
			 try {
				      employee_info_list = session.selectList("employee_info.select_all");
		        } finally {
		            session.close();
		        }
		        System.out.println("selectAll() --> "+employee_info_list);
		        return employee_info_list;
		 }
	  
	  //分页查询员工信息
	  public List<employee_info> select_by_page(int employee_page)
	  {
		  List<employee_info> employee_info_list=null;
			 SqlSession session=this.sqlSessionFactory.openSession();
			 try {
				 employee_selector _employee_selector=new employee_selector();
				 _employee_selector.set_employee_begin(11*(employee_page-1));
				 _employee_selector.set_employee_num(11);
				      employee_info_list = session.selectList("employee_info.select_by_page",_employee_selector);
		        } finally {
		            session.close();
		        }
		        System.out.println("select_by_page() --> "+employee_info_list);
		        return employee_info_list;
	  }
	  
	  //根据id删除员工信息
	  public void delete_from_id(int employee_id)
	  {
		  SqlSession session = sqlSessionFactory.openSession();
		  
	        try {
	            session.delete("employee_info.delete", employee_id);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("delete("+employee_id+")");
	  }
	  
	  public boolean update_employee_info(employee_info _employee_info)
	  {
		  int id = -1;
	      SqlSession session = sqlSessionFactory.openSession();
	 
	      try {
	          id = session.update("employee_info.update",_employee_info);
	 
	      } finally {
	          session.commit();
	          session.close();
	      }
	      System.out.println("update("+_employee_info+") --> updated");
	      
	      if(id==-1)
	        {
	        	return false;//修改失败
	        }
	        else
	        {
	        	return true;//修改成功
	        }
	  }
	  
	  //根据部门和上级领导id查询
	  public employee_info get_employee_info_by_parent_id_and_department_id(int employee_leader_id,int employee_department_id)
	  {
		  employee_info _employee_info = new employee_info();
		  
		  _employee_info.set_employee_leader_id(employee_leader_id);
		  _employee_info.set_employee_department_id(employee_department_id);
	        SqlSession session = sqlSessionFactory.openSession();
	        try {
	            _employee_info = session.selectOne("employee_info.select_by_parent_id_and_department_id",_employee_info);
	 
	        } finally {
	            session.close();
	        }
	        return _employee_info;
	  }
	  
	 public  List<employee_info> get_employee_info_list_by_department_id(int employee_department_id)
	  {
		 List<employee_info> employee_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 employee_info_list = session.selectList("employee_info.select_by_employee_department_id",employee_department_id);
	        } finally {
	            session.close();
	        }
	        System.out.println("select_by_department()--> "+employee_info_list);
	        return employee_info_list;
	  }
	 
	 //登陆用用户手机号查询用户信息
	 public employee_info select_by_user_phone(String employee_phone)
	 {
		 employee_info _employee_info = null;
	        SqlSession session = sqlSessionFactory.openSession();
	        try {
	            _employee_info = session.selectOne("employee_info.select_by_employee_phone", employee_phone);
	 
	        } finally {
	            session.close();
	        }
	        System.out.println("selectByUsername("+employee_phone+") --> "+_employee_info);
	        return _employee_info;
	 }
	 
	 public boolean update_employee_service_group_type(employee_info _employee_info)
	 {
		 int id = -1;
	      SqlSession session = sqlSessionFactory.openSession();
	 
	      try {
	          id = session.update("employee_info.update_service_type",_employee_info);
	 
	      } finally {
	          session.commit();
	          session.close();
	      }
	      System.out.println("update("+_employee_info+") --> updated");
	      
	      if(id==-1)
	        {
	        	return false;//修改失败
	        }
	        else
	        {
	        	return true;//修改成功
	        }
	 }
	 
	 //更改用户密码
	 public  boolean update_employee_password(employee_info _employee_info)
	 {
		 int id = -1;
	      SqlSession session = sqlSessionFactory.openSession();
	 
	      try {
	          id = session.update("employee_info.update_password",_employee_info);
	 
	      } finally {
	          session.commit();
	          session.close();
	      }
	      System.out.println("update("+_employee_info+") --> updated");
	      
	      if(id==-1)
	        {
	        	return false;//修改失败
	        }
	        else
	        {
	        	return true;//修改成功
	        }
	 }
	 
	 public int get_employee_total_num()
	 {
		 int employee_total_num;
		 List<employee_info> employee_info_list=null;
		 
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 employee_selector _employee_selector=new employee_selector();//五服务加分页信息
			  _employee_selector.set_employee_begin(0);
			  _employee_selector.set_employee_num(99999999);
			  
			  employee_info_list = session.selectList("employee_info.select_by_page",_employee_selector);
			  employee_total_num =employee_info_list.size();
	        } finally {
	            session.close();
	        }
	        System.out.println("select_by_page --> "+employee_info_list);
		 
		 return employee_total_num;
	 }

	
	
	  
}

