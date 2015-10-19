package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.mail_info;

public class mail_info_dao 
{
	private SqlSessionFactory sqlSessionFactory=null;  //数据库链接器

	public mail_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public boolean insert(mail_info _mail_info){
	       int id = -1;
	        SqlSession session = this.sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("mail_info.insert", _mail_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_mail_info+") --> "+_mail_info.get_mail_id());
	        
	        if(id==-1)
	        {
	        	return false;//插入失败
	        }
	        else
	        {
	        	return true;//插入成功
	        }
	    }
	 
	 public List<mail_info> select_all()
	 {
		 List<mail_info> mail_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
	            mail_info_list = session.selectList("mail_info.select_all");
	        } finally {
	            session.close();
	        }
	        System.out.println("selectAll() --> "+mail_info_list);
	        return mail_info_list;
	 }
	 
	 
}
