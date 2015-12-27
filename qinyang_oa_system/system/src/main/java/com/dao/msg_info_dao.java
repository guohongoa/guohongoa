package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.contact_info;
import com.data.msg_info;
import com.data.work_record_info;
import com.selector.msg_selector;
import com.selector.work_record_selector;

public class msg_info_dao 
{
	private SqlSessionFactory sqlSessionFactory=null;

	//构造函数，初始化数据库连接器
	public msg_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	
	public boolean insert(msg_info _msg_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("msg_info.insert", _msg_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_msg_info+") --> "+_msg_info.get_msg_id());
	        
	        if(id==-1)
	        {
	        	return false;//插入失败
	        }
	        else
	        {
	        	return true;//插入成功
	        }
	  }
	
	
	public int get_msg_total_num_by_by_user(int msg_owner_id)
	 {
		 int msg_total_num;
		 List<msg_info> msg_info_list=null;
		 
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 msg_selector _msg_selector=new msg_selector();//台账加分页信息
			 _msg_selector.set_msg_owner_id(msg_owner_id);
			  
			   _msg_selector.set_msg_begin(0);
			  _msg_selector.set_msg_num(99999999);
			  
			  msg_info_list = session.selectList("msg_info.select_by_msg_owner_id",_msg_selector);
			  msg_total_num =msg_info_list.size();
	        } finally {
	            session.close();
	        }
	        System.out.println("msg_info.select_by_id --> "+msg_info_list);
		 
		 return msg_total_num;
	 }
	
	public List<msg_info> select_by_owner_id(int owner_id,int msg_page)
	{
		List<msg_info> msg_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			  msg_selector _msg_selector=new msg_selector();//台账加分页信息
			  _msg_selector.set_msg_owner_id(owner_id);
			  
			  //固定一页最多取十一条数据
			  _msg_selector.set_msg_begin(11*(msg_page-1));
			  _msg_selector.set_msg_num(11);
			 
			 msg_info_list = session.selectList("msg_info.select_by_msg_owner_id",_msg_selector);
	        } finally {
	            session.close();
	        }
	        System.out.println("select_by_work_record_creatorid() --> "+msg_info_list);
	        return msg_info_list;
	}
}
