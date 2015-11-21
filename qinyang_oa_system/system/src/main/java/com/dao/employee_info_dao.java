package com.dao;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.employee_info;

//员工信息表数据库映射类
public class employee_info_dao 
{
	
	private SqlSessionFactory sqlSessionFactory=null;

	//构造函数，初始化数据库连接器
	public employee_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public boolean insert(employee_info _employee_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("employee_info.insert", _employee_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_employee_info+") --> "+_employee_info.get_employee_id());
	        
	        if(id==-1)
	        {
	        	return false;//插入失败
	        }
	        else
	        {
	        	return true;//插入成功
	        }
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
	  
}

