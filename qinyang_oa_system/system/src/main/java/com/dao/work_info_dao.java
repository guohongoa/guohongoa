package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.department_info;
import com.data.service_info;
import com.data.work_contact_info;
import com.data.work_info;
import com.selector.department_selector;
import com.selector.service_selector;
import com.selector.work_task_selector;

public class work_info_dao 
{
private SqlSessionFactory sqlSessionFactory=null;  //数据库链接器
	
	//构造函数，初始化数据库连接器
	public work_info_dao(SqlSessionFactory sqlSessionFactory)
	{
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	 public int insert(work_info _work_info)
	 {
	       int id = -1;
	        SqlSession session = sqlSessionFactory.openSession();
	 
	        try {
	            id = session.insert("work_info.insert", _work_info);
	        } finally {
	            session.commit();
	            session.close();
	        }
	       id=_work_info.get_work_id();
	       return id;
	        
	       
	  }
	 
	
	 
	 public List<work_info>  get_by_work_sender_id(int sender_id)
	 {
		 List<work_info> work_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
	            work_info_list = session.selectList("work_info.select_by_sender_id",sender_id);
	        } finally {
	            session.close();
	        }
	        //System.out.println("selectAll() --> "+department_info_list);
	        return work_info_list;
	 }
	 
	 public List<work_info> get_work_info_by_receiver_id_and_type(work_info _work_info)
	 {
		 List<work_info> work_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
	            work_info_list = session.selectList("work_info.select_by_receiver_id_and_type",_work_info);
	        } finally {
	            session.close();
	        }
	        //System.out.println("selectAll() --> "+department_info_list);
	        return work_info_list;
	 }
	 
	 
	 public List<work_info>  get_work_info_by_sender_id_and_type(work_info _work_info)
	 {
		 List<work_info> work_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
	            work_info_list = session.selectList("work_info.select_by_sender_id_and_type",_work_info);
	        } finally {
	            session.close();
	        }
	        //System.out.println("selectAll() --> "+department_info_list);
	        return work_info_list;
	 }
	 
	 public List<work_info> get_work_info_by_approved(work_info _work_info)
	 {
		 List<work_info> work_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
	            work_info_list = session.selectList("work_info.select_by_receiver_id_and_type_and_status",_work_info);
	        } finally {
	            session.close();
	        }
	        //System.out.println("selectAll() --> "+department_info_list);
	        return work_info_list;
	 }
	 
	 public List<work_info> get_all_work_all_by_owner(work_info _work_info)
	 {
		 List<work_info> work_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
	            work_info_list = session.selectList("work_info.select_by_owner",_work_info);
	        } finally {
	            session.close();
	        }
	        //System.out.println("selectAll() --> "+department_info_list);
	        return work_info_list;
	 }
	 
	 //获得全部工作条目总数
	 public int get_all_work_total_num_by_by_user(int employee_id,int work_status)
	 {
		 int work_total_num;
		 work_task_selector _work_task_selector=new work_task_selector();
		 List<work_info> work_info_list=null;
		 
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 
			 _work_task_selector.set_work_sender_id(employee_id);
			 _work_task_selector.set_work_receiver_id(employee_id);
			 _work_task_selector.set_work_status(work_status);
			  _work_task_selector.set_work_begin(0);
			  _work_task_selector.set_work_num(99999999);
	
			  
			  work_info_list = session.selectList("work_info.select_all_work_by_page",_work_task_selector);
			  work_total_num =work_info_list.size();
	        } finally {
	            session.close();
	        }
	        System.out.println("select_by_page --> "+_work_task_selector);
		 
		 return work_total_num;
	 }
	 
	 public List<work_info> get_all_work_list_by_employee_id_and_page(int employee_id,int work_stauts,int work_page)
	 {
		 List<work_info> work_info_list=null;
		 work_task_selector _work_task_selector=new work_task_selector();//全部工作加分页信息
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 
			 _work_task_selector.set_work_sender_id(employee_id);
			 _work_task_selector.set_work_receiver_id(employee_id);
			 _work_task_selector.set_work_status(work_stauts);
			  //固定一页最多取十一条数据
			 _work_task_selector.set_work_begin(11*(work_page-1));
			 _work_task_selector.set_work_num(11);
			 work_info_list = session.selectList("work_info.select_all_work_by_page",_work_task_selector);
	        } finally {
	            session.close();
	        }
		    System.out.println("select_by_page --> "+_work_task_selector);
	        return work_info_list;
	 }
	 
	 //反馈列表
	 public int get_all_feedback_total_num_by_by_user(int employee_id,int work_type)
	 {
		 int work_total_num;
		 work_task_selector _work_task_selector=new work_task_selector();
		 List<work_info> work_info_list=null;
		 
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 
			 _work_task_selector.set_work_receiver_id(employee_id);
			 _work_task_selector.set_work_type(work_type);
			  _work_task_selector.set_work_begin(0);
			  _work_task_selector.set_work_num(99999999);
	
			  
			  work_info_list = session.selectList("work_info.select_feedback_work_by_page",_work_task_selector);
			  work_total_num =work_info_list.size();
	        } finally {
	            session.close();
	        }
	        System.out.println("select_feedback_by_page --> "+_work_task_selector);
		 
		 return work_total_num;
	 }
	 
	 public List<work_info> get_all_work_all_feedback_by_employee_id_and_page(int employee_id,int work_type,int work_page)
	 {
		 List<work_info> work_info_list=null;
		 work_task_selector _work_task_selector=new work_task_selector();//全部工作加分页信息
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 
			 _work_task_selector.set_work_receiver_id(employee_id);
			 _work_task_selector.set_work_type(work_type);
			  //固定一页最多取十一条数据
			 _work_task_selector.set_work_begin(11*(work_page-1));
			 _work_task_selector.set_work_num(11);
			 work_info_list = session.selectList("work_info.select_feedback_work_by_page",_work_task_selector);
	        } finally {
	            session.close();
	        }
		    System.out.println("select_by_page --> "+_work_task_selector);
	        return work_info_list;
	 }
	 
	 public int get_all_arrange_total_num_by_by_user(int sender_id,int work_type)
	 {
		 int work_total_num;
		 work_task_selector _work_task_selector=new work_task_selector();
		 List<work_info> work_info_list=null;
		 
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 
			 _work_task_selector.set_work_sender_id(sender_id);
			 _work_task_selector.set_work_type(work_type);
			  _work_task_selector.set_work_begin(0);
			  _work_task_selector.set_work_num(99999999);
	
			  
			  work_info_list = session.selectList("work_info.select_arrange_work_by_page",_work_task_selector);
			  work_total_num =work_info_list.size();
	        } finally {
	            session.close();
	        }
	        System.out.println("select_feedback_by_page --> "+_work_task_selector);
		 
		 return work_total_num;
	 }
	 
	 public List<work_info> get_all_work_all_arrange_by_employee_id_and_page(int sender_id,int work_type,int work_page)
	 {
		 List<work_info> work_info_list=null;
		 work_task_selector _work_task_selector=new work_task_selector();//全部工作加分页信息
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 
			 _work_task_selector.set_work_sender_id(sender_id);
			 _work_task_selector.set_work_type(work_type);
			  //固定一页最多取十一条数据
			 _work_task_selector.set_work_begin(11*(work_page-1));
			 _work_task_selector.set_work_num(11);
			 work_info_list = session.selectList("work_info.select_arrange_work_by_page",_work_task_selector);
	        } finally {
	            session.close();
	        }
		    System.out.println("select_arrange_by_page --> "+_work_task_selector);
	        return work_info_list;
	 }
	 
	 public int get_all_report_total_num_by_by_user(int sender_id,int work_type)
	 {
		 int work_total_num;
		 work_task_selector _work_task_selector=new work_task_selector();
		 List<work_info> work_info_list=null;
		 
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 
			 _work_task_selector.set_work_sender_id(sender_id);
			 _work_task_selector.set_work_type(work_type);
			  _work_task_selector.set_work_begin(0);
			  _work_task_selector.set_work_num(99999999);
	
			  
			  work_info_list = session.selectList("work_info.select_report_work_by_page",_work_task_selector);
			  work_total_num =work_info_list.size();
	        } finally {
	            session.close();
	        }
	        System.out.println("select_feedback_by_page --> "+_work_task_selector);
		 
		 return work_total_num;
	 }
	 
	 public List<work_info> get_all_work_all_report_by_employee_id_and_page(int sender_id,int work_type,int work_page)
	 {
		 List<work_info> work_info_list=null;
		 work_task_selector _work_task_selector=new work_task_selector();//全部工作加分页信息
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 
			 _work_task_selector.set_work_sender_id(sender_id);
			 _work_task_selector.set_work_type(work_type);
			  //固定一页最多取十一条数据
			 _work_task_selector.set_work_begin(11*(work_page-1));
			 _work_task_selector.set_work_num(11);
			 work_info_list = session.selectList("work_info.select_report_work_by_page",_work_task_selector);
	        } finally {
	            session.close();
	        }
		    System.out.println("select_arrange_by_page --> "+_work_task_selector);
	        return work_info_list;
	 }
	 
	 public int get_all_approved_total_num_by_by_user(int receiver_id,int work_type,int work_status)
	 {
		 int work_total_num;
		 work_task_selector _work_task_selector=new work_task_selector();
		 List<work_info> work_info_list=null;
		 
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 
			 _work_task_selector.set_work_receiver_id(receiver_id);
			 _work_task_selector.set_work_status(work_status);
			 _work_task_selector.set_work_type(work_type);
			  _work_task_selector.set_work_begin(0);
			  _work_task_selector.set_work_num(99999999);
	
			  
			  work_info_list = session.selectList("work_info.select_approved_work_by_page",_work_task_selector);
			  work_total_num =work_info_list.size();
	        } finally {
	            session.close();
	        }
	        System.out.println("select_approved_by_page --> "+_work_task_selector);
		 
		 return work_total_num;
	 }
	 
	 public List<work_info> get_all_approved_by_employee_id_and_page(int receiver_id,int work_type,int work_status,int work_page)
	 {
		 List<work_info> work_info_list=null;
		 work_task_selector _work_task_selector=new work_task_selector();//全部工作加分页信息
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 
			 _work_task_selector.set_work_receiver_id(receiver_id);
			 _work_task_selector.set_work_type(work_type);
			 _work_task_selector.set_work_status(work_status);
			  //固定一页最多取十一条数据
			 _work_task_selector.set_work_begin(11*(work_page-1));
			 _work_task_selector.set_work_num(11);
			 work_info_list = session.selectList("work_info.select_approved_work_by_page",_work_task_selector);
	        } finally {
	            session.close();
	        }
		    System.out.println("select_approved_by_page --> "+_work_task_selector);
	        return work_info_list;
	 }
	 
	 public work_info select_by_work_id(int work_id)
	 {
		 work_info _work_info = null;
	        SqlSession session = sqlSessionFactory.openSession();
	        try {
	            _work_info = session.selectOne("work_info.select_by_work_id", work_id);
	 
	        } finally {
	            session.close();
	        }
	        System.out.println("select_by_workid("+work_id+") --> "+_work_info);
	        return _work_info;
	 }
}
