package com.dao;

import org.apache.ibatis.*;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.data.system_user_info;

//system_user_info数据对象映射
public class system_user_info_dao 
{
	Logger logger=Logger.getLogger(system_user_info_dao.class);
	private SqlSessionFactory sqlSessionFactory=null;  //数据库链接器
	
	//构造函数，初始化数据库连接器
	public system_user_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public int insert(system_user_info _system_user_info){
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("system_user_info.insert", _system_user_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_system_user_info+") --> "+_system_user_info.get_user_id());
	        return id;
	    }
}
