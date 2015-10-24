package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.department_info;

public class department_info_dao 
{
	
	private SqlSessionFactory sqlSessionFactory=null;

	//构造函数，初始化数据库连接器
	public department_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public boolean insert(department_info _department_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("department_info.insert", _department_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_department_info+") --> "+_department_info.get_department_id());
	        
	        if(id==-1)
	        {
	        	return false;//插入失败
	        }
	        else
	        {
	        	return true;//插入成功
	        }
	  }
	 
	 //根据部门id查询部门信息
	  public department_info select_by_department_id(int department_id)
	  {
		  department_info _department_info = null;
	        SqlSession session = sqlSessionFactory.openSession();
	        try {
	            _department_info = session.selectOne("department_info.select_by_department_id", department_id);
	 
	        } finally {
	            session.close();
	        }
	        System.out.println("selectByUserid("+department_id+") --> "+_department_info);
	        return _department_info;
	  }
	  
	  //查询所有部门信息
	  public List<department_info> select_all()
		 {
			 List<department_info> department_info_list=null;
			 SqlSession session=this.sqlSessionFactory.openSession();
			 try {
		            department_info_list = session.selectList("department_info.select_all");
		        } finally {
		            session.close();
		        }
		        System.out.println("selectAll() --> "+department_info_list);
		        return department_info_list;
		 }
}

