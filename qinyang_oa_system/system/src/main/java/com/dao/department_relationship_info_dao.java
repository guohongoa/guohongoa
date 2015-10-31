package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.department_relationship_info;
import com.data.project_info;

public class department_relationship_info_dao 
{
	private SqlSessionFactory sqlSessionFactory=null;

	//构造函数，初始化数据库连接器
	public department_relationship_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public boolean insert(department_relationship_info _department_relationship_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("department_relationship_info.insert", _department_relationship_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_department_relationship_info+") --> "+_department_relationship_info.get_department_relationship_id());
	        
	        if(id==-1)
	        {
	        	return false;//插入失败
	        }
	        else
	        {
	        	return true;//插入成功
	        }
	  }
	 
	 public List<department_relationship_info> select_by_upper_id(int department_relationship_upper_id)
	 {
		 List<department_relationship_info> department_relationship_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 department_relationship_list = session.selectList("department_relationship_info.select_by_upper_id",department_relationship_upper_id);
		 
		    } finally {
	            session.close();
	        }
	        return department_relationship_list;
	 }
}
