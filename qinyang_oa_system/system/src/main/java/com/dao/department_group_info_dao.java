package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.department_group_info;
import com.data.department_info;

public class department_group_info_dao 
{
    private SqlSessionFactory sqlSessionFactory=null;
	
	public department_group_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	//
	public List<department_group_info> get_department_group_list()
	{
		 List<department_group_info> department_group_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
	            department_group_list = session.selectList("department_group_info.select_all");
	        } finally {
	            session.close();
	        }
	        System.out.println("selectAll() --> "+department_group_list);
	        return department_group_list;
	}
	
	public department_group_info get_by_id(int department_group_id)
	{
		department_group_info _department_group_info = null;
        SqlSession session = sqlSessionFactory.openSession();
        try {
        	_department_group_info = session.selectOne("department_group_info.select_by_department_group_id", department_group_id);
 
        } finally {
            session.close();
        }
        System.out.println("selectByUserid("+department_group_id+") --> "+_department_group_info);
        return _department_group_info;
	}
}