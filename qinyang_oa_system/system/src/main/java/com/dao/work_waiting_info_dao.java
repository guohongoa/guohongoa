package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.department_info;
import com.data.work_info;
import com.data.work_waiting_info;
import com.selector.work_task_selector;
import com.selector.work_waiting_selector;

public class work_waiting_info_dao 
{
    private SqlSessionFactory sqlSessionFactory=null;  //数据库链接器
	
	
	public work_waiting_info_dao (SqlSessionFactory sqlSessionFactory) 
	{
		this.sqlSessionFactory=sqlSessionFactory;
	} 
	
	 public boolean insert(work_waiting_info _work_waiting_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("work_waiting_info.insert", _work_waiting_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_work_waiting_info+") --> "+_work_waiting_info.get_waiting_id());
	        
	        if(id==-1)
	        {
	        	return false;//插入失败
	        }
	        else
	        {
	        	return true;//插入成功
	        }
	  }	
	 
	 public List<work_waiting_info> get_all_by_work_receiver_id(int work_receiver_id)
	 {
		 List<work_waiting_info> work_waiting_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 work_waiting_list = session.selectList("work_waiting_info.select_by_receiver_id",work_receiver_id);
	        } finally {
	            session.close();
	        }
	        System.out.println("selectAll() --> "+work_waiting_list);
	        return work_waiting_list;
	 }
	 
	 public int get_waiting_total_num_by_by_user(int work_receiver_id)
	 {
		 int work_total_num;
		 //work_task_selector _work_task_selector=new work_task_selector();
		 work_waiting_selector _work_waiting_selector=new work_waiting_selector();
		 List<work_info> work_info_list=null;
		 
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 
			 _work_waiting_selector.set_work_receiver_id(work_receiver_id);
			 _work_waiting_selector.set_work_begin(0);
			 _work_waiting_selector.set_work_num(99999999);
	
			  
			  work_info_list = session.selectList("work_waiting_info.select_by_page",_work_waiting_selector);
			  work_total_num =work_info_list.size();
	        } finally {
	            session.close();
	        }
	        System.out.println("select_waiting_by_page --> "+_work_waiting_selector);
		 
		 return work_total_num;
	 }
	 
	 public List<work_waiting_info> get_all_by_work_receiver_id_and_page(int work_receiver_id,int work_page)
	 {
		 List<work_waiting_info> work_waiting_list=null;
		 work_waiting_selector _work_waiting_selector=new work_waiting_selector();//全部工作加分页信息
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 
			 _work_waiting_selector.set_work_receiver_id(work_receiver_id);

			  //固定一页最多取十一条数据
			 _work_waiting_selector.set_work_begin(11*(work_page-1));
			 _work_waiting_selector.set_work_num(11);
			 work_waiting_list = session.selectList("work_waiting_info.select_by_page",_work_waiting_selector);
	        } finally {
	            session.close();
	        }
		    System.out.println("select_waiting_by_page --> "+_work_waiting_selector);
	        return work_waiting_list;
	 }
	 
	 public boolean update_waiting_status(work_waiting_info _waiting_info)
	 {
		 int id = -1;
	      SqlSession session = sqlSessionFactory.openSession();
	 
	      try {
	          id = session.update("work_waiting_info.update_waiting_status",_waiting_info);
	 
	      } finally {
	          session.commit();
	          session.close();
	      }
	      System.out.println("update("+_waiting_info+") --> updated");
	      
	      if(id==-1)
	        {
	        	return false;//修改失败
	        }
	        else
	        {
	        	return true;//修改成功
	        }
	 }
	 
	 public work_waiting_info get_waiting_info_by_work_id(int work_id)
	 {
		 work_waiting_info _work_wating_info = null;
	        SqlSession session = sqlSessionFactory.openSession();
	        try {
	        	_work_wating_info = session.selectOne("work_waiting_info.get_waiting_info_by_work_id", work_id);
	 
	        } finally {
	            session.close();
	        }
	        System.out.println("selectByWorkId("+work_id+") --> "+_work_wating_info);
	        return _work_wating_info;
	 }
		
}
