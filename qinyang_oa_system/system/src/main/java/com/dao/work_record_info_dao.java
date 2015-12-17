package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.data.service_info;
import com.data.work_record_info;
import com.selector.service_selector;
import com.selector.work_record_selector;

public class work_record_info_dao 
{
	
	private SqlSessionFactory sqlSessionFactory=null;  //数据库链接器
	
	
	public work_record_info_dao (SqlSessionFactory sqlSessionFactory) 
	{
		this.sqlSessionFactory=sqlSessionFactory;
	} 
	
	public int insert(work_record_info _work_record_info)
	{
	       int record_id = -1;
	        SqlSession session = this.sqlSessionFactory.openSession();
	 
	        try {
	            int rs = session.insert("work_record_info.insert", _work_record_info);
	            record_id=_work_record_info.get_work_record_id();
	        } finally {
	            session.commit();
	            session.close();
	        }
	        System.out.println("insert("+_work_record_info+") --> "+_work_record_info.get_work_record_id());
	        
	       return record_id;
	}
	

	//根据用户id查询台账信息
	 public List<work_record_info> select_by_work_record_creatorid(int work_record_creatorid,int record_page)
	 {
		 List<work_record_info> work_record_info_list=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 work_record_selector _work_record_selector=new work_record_selector();//台账加分页信息
			  _work_record_selector.set_work_record_creatorid(work_record_creatorid);
			  //固定一页最多取十一条数据
			  _work_record_selector.set_work_record_begin(11*(record_page-1));
			  _work_record_selector.set_work_record_num(11);
			 
			 work_record_info_list = session.selectList("work_record_info.select_by_work_record_creatorid",_work_record_selector);
	        } finally {
	            session.close();
	        }
	        System.out.println("select_by_work_record_creatorid() --> "+work_record_info_list);
	        return work_record_info_list;
	 }
	 
	 public int get_record_total_num_by_by_user(int work_record_creatorid)
	 {
		 int record_total_num;
		 List<work_record_info> work_record_info_list=null;
		 
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 work_record_selector _work_record_selector=new work_record_selector();//台账加分页信息
			 _work_record_selector.set_work_record_creatorid(work_record_creatorid);
			  
			  _work_record_selector.set_work_record_begin(0);
			  _work_record_selector.set_work_record_num(99999999);
			  
			  work_record_info_list = session.selectList("work_record_info.select_by_work_record_creatorid",_work_record_selector);
			  record_total_num =work_record_info_list.size();
	        } finally {
	            session.close();
	        }
	        System.out.println("work_record_info.select_by_work_record_creatorid --> "+work_record_info_list);
		 
		 return record_total_num;
	 }
	 
	 
	 public work_record_info select_by_work_record_id(int work_record_id)
	 {
		 work_record_info _work_record_info=null;
		 SqlSession session=this.sqlSessionFactory.openSession();
		 try {
			 _work_record_info= session.selectOne("work_record_info.select_by_work_record_id",work_record_id);
		     }finally{
	            session.close();
	        }
	        System.out.println("select_by_work_record_id --> "+_work_record_info.get_work_record_id());
	        return _work_record_info;
	 }
}
