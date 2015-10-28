package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.project_info;

public class project_info_dao 
{
	
	private SqlSessionFactory sqlSessionFactory=null;

	//构造函数，初始化数据库连接器
	public project_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public boolean insert(project_info _project_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("project_info.insert", _project_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_project_info+") --> "+_project_info.get_project_id());
	        
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
	  public project_info select_by_project_id(int project_id)
	  {
		  project_info _project_info = null;
	        SqlSession session = sqlSessionFactory.openSession();
	        try {
	            _project_info = session.selectOne("project_info.select_by_department_id", project_id);
	 
	        } finally {
	            session.close();
	        }
	        System.out.println("selectByUserid("+project_id+") --> "+_project_info);
	        return _project_info;
	  }
	  
	  //查询所有部门信息
	  public List<project_info> select_all()
		 {
			 List<project_info> project_info_list=null;
			 SqlSession session=this.sqlSessionFactory.openSession();
			 try {
				 project_info_list = session.selectList("project_info.select_all");
		        } finally {
		            session.close();
		        }
		        System.out.println("selectAll() --> "+project_info_list);
		        return project_info_list;
		 }
	  
	  public void delete_from_id(int project_id)
	  {
		  SqlSession session = sqlSessionFactory.openSession();
		  
	        try {
	            session.delete("project_info.delete", project_id);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("delete("+project_id+")");
	  }
}

