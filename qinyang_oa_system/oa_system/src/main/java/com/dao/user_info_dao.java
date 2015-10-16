package com.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.data.user_info;

//system_user_info数据对象映射
public class user_info_dao 
{
	Logger logger=Logger.getLogger(system_user_info_dao.class);
	private SqlSessionFactory sqlSessionFactory=null;  //数据库链接器
	
	//构造函数，初始化数据库连接器
	public user_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public boolean insert(user_info _user_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("user_info.insert", _user_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_user_info+") --> "+_user_info.get_user_id());
	        
	        if(id==-1)
	        {
	        	return false;//插入失败
	        }
	        else
	        {
	        	return true;//插入成功
	        }
	  }
	 
	  public user_info select_by_user_id(int user_id)
	  {
		  user_info _user_info = null;
	        SqlSession session = sqlSessionFactory.openSession();
	        try {
	            _user_info = session.selectOne("user_info.select_by_user_name", user_id);
	 
	        } finally {
	            session.close();
	        }
	        System.out.println("selectByUserid("+user_id+") --> "+_user_info);
	        return _user_info;
	  }
}
