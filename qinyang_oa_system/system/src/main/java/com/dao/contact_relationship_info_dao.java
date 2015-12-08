package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.contact_person_info;
import com.data.contact_relationship_info;
import com.data.employee_info;

//四联用户关系表链接器
public class contact_relationship_info_dao
{
	private SqlSessionFactory sqlSessionFactory=null;

	public contact_relationship_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public boolean insert(contact_relationship_info _contact_relationship_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("contact_relationship_info.insert", _contact_relationship_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_contact_relationship_info+") --> "+_contact_relationship_info);
	        
	        if(id==-1)
	        {
	        	return false;//插入失败
	        }
	        else
	        {
	        	return true;//插入成功
	        }
	  }
	 
	 //获得吻合主方id和部门与输入参数相同的所有四联关系数据
	 public List<contact_relationship_info> get_son_relationship_list_by_parent_id(int employee_parent_id,int employee_department_id)
	 {   List<contact_relationship_info> contact_relationship_list=null;
		 contact_relationship_info _contact_relationship_info = new contact_relationship_info();
		  
		  _contact_relationship_info.set_contact_owner_id(employee_parent_id);
		  _contact_relationship_info.set_contact_friend_department_id(employee_department_id);
		  _contact_relationship_info.set_contact_relationship_type(1);//只搜下级
	        SqlSession session = sqlSessionFactory.openSession();
	        try {
	        	contact_relationship_list = session.selectList("contact_relationship_info.select_by_owner_id_and_friend_department_id", _contact_relationship_info);
	 
	        } finally {
	            session.close();
	        }
	        return contact_relationship_list;
	 }
}
