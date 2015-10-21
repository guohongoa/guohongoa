package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.data.regulation_info;
import com.data.user_info;

public class regulation_info_dao 
{
	
	private SqlSessionFactory sqlSessionFactory=null;

	//构造函数，初始化数据库连接器
	public regulation_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public boolean insert(regulation_info _regulation_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("regulation_info.insert", _regulation_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_regulation_info+") --> "+_regulation_info.get_regulation_id());
	        
	        if(id==-1)
	        {
	        	return false;//插入失败
	        }
	        else
	        {
	        	return true;//插入成功
	        }
	  }
	 
	 //根据用户id返回对应用户信息
	  public regulation_info select_by_regulation_id(int regulation_id)
	  {
		  regulation_info _regulation_info = null;
	        SqlSession session = sqlSessionFactory.openSession();
	        try {
	            _regulation_info = session.selectOne("regulation_info_info.select_by_regulation_id", regulation_id);
	 
	        } finally {
	            session.close();
	        }
	        System.out.println("selectByUserid("+regulation_id+") --> "+_regulation_info);
	        return _regulation_info;
	  }
	  
	  //查询所有用户信息表的信息
	  public List<regulation_info> select_all()
		 {
			 List<regulation_info> regulation_info_list=null;
			 SqlSession session=this.sqlSessionFactory.openSession();
			 try {
		            regulation_info_list = session.selectList("regulation_info.select_all");
		        } finally {
		            session.close();
		        }
		        System.out.println("selectAll() --> "+regulation_info_list);
		        return regulation_info_list;
		 }
}
