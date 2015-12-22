package com.dao;

import org.apache.ibatis.session.SqlSessionFactory;

public class deparment_group_info_dao 
{
private SqlSessionFactory sqlSessionFactory=null;
	
	public deparment_group_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
}
