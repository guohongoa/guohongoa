
package com.viewcontroller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.data.contact_add_request_info;
import com.data.contact_info;
import com.data.contact_node;
import com.data.contact_person_department_info;
import com.data.contact_person_info;
import com.data.contact_relationship_info;
import com.data.department_info;
import com.data.employee_info;
import com.data.relationship_info;


	@Controller
	public class contact_request_controller
	{
		//用户关系添加请求
		@RequestMapping("contact/relationship_add.do")
		public ModelAndView relationship_add_request(
				@RequestParam(value="relationship_owner_id")     int    relationship_owner_id , //主方id
			    @RequestParam(value="relationship_owner_name")  String relationship_owner_name,
				@RequestParam(value="relationship_friend_id")    int    relationship_friend_id,
				@RequestParam(value="relationship_friend_name")  String relationship_friend_name,
	            @RequestParam(value="relationship_category")     int    relationship_category
				)
		{
			//初始化relationship_info对象
		    relationship_info _relationship_info=new relationship_info();
		    _relationship_info.set_relationship_owner_id(relationship_owner_id);
		    _relationship_info.set_relationship_owner_name(relationship_owner_name);
		    _relationship_info.set_relationship_friend_name(relationship_friend_name);
		    _relationship_info.set_relationship_friend_id(relationship_friend_id);
		    _relationship_info.set_relationship_category(relationship_category);
			
			//添加系统时间
			   Date date=new Date();
			   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			   String relationship_addtime=format.format(date);
			   _relationship_info.set_relationship_addtime(relationship_addtime);
			   //插入数据库
			  //relationship_insert_db(_relationship_info);
			  com.dbconnector.contact_db_connector.relationship_insert_db(_relationship_info);
			
			
			
			
			 ModelAndView mv=new ModelAndView();
			  
			   
			   return mv;
		}
		
		
		
		//添加四联联系人请求响应
		@RequestMapping("contact/contact_person_add.do")
		public void contact_person_add_request(
				@RequestParam(value="contact_person_name")          String   contact_person_name,
				@RequestParam(value="contact_person_department_id") int      contact_person_department_id
				)
		{
			contact_person_info _contact_person_info=new contact_person_info();
			_contact_person_info.set_contact_person_name(contact_person_name);
			_contact_person_info.set_contact_person_department_id(contact_person_department_id);
			
			String contact_person_department_name;//四联联络人（机构）所属组织名称
			
			//根据组织id，映射组织名称
			
			switch (contact_person_department_id) 
			{
			case 1:contact_person_department_name="市委常委";                 break;
			case 2:contact_person_department_name="市政府 ";                  break;
			case 3:contact_person_department_name="乡镇办党（工）委";           break;
			case 4:contact_person_department_name="市直能部门";                break;
			case 5:contact_person_department_name=" 农村（社区）党员干部";       break;
			case 6:contact_person_department_name="镇办内设机构和基层站所   ";   break;
			case 7:contact_person_department_name="党员群众服务中心嘉言民生代办员";break;
			case 8:contact_person_department_name="农村(社区)党员组织";         break;
			case 9:contact_person_department_name="村民小组";                 break;
			case 10:contact_person_department_name="农村（社区）事务";          break;
			case 11:contact_person_department_name="群众";                   break;

			default:contact_person_department_name="输入错误";
				    System.out.println("error");break;//不在列举范围之内，说明数据传输出错
			}
			
			_contact_person_info.set_contact_person_department_name(contact_person_department_name);
			
			//添加系统时间
			   Date date=new Date();
			   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			   String contact_person_addtime=format.format(date);
			   _contact_person_info.set_contact_person_addtime(contact_person_addtime);
			   //插入数据库
			   com.dbconnector.contact_db_connector.contact_person_insert_db(_contact_person_info);
		}
		
		//四联服务人员部门添加响应页
		@RequestMapping("contact/contact_person_department_add.do")
		public void contact_person_add_request(
				@RequestParam(value="contact_person_department_id")          int    contact_person_department_id,
				@RequestParam(value="contact_person_department_name")        String contact_person_department_name
				)
		{
			contact_person_department_info _contact_person_department_info=new contact_person_department_info();
			_contact_person_department_info.set_contact_person_department_id(contact_person_department_id);
			_contact_person_department_info.set_contact_person_department_name(contact_person_department_name);
			
			 com.dbconnector.contact_db_connector.contact_person_department_insert_db(_contact_person_department_info);
		}
		
		@RequestMapping("contact/contact_person_check.do")
		public ModelAndView contact_person_check_request(
				@RequestParam(value="employee_id")          int    employee_id
				)
		{
			 ModelAndView mv=new ModelAndView("index.jsp");
			   //根据组织机构id分组，得到全部四联人员信息的二维数组
			   //List<List<employee_info>> contact_list= com.dbconnector.contact_db_connector.get_contact_list_by_department();
			 List<List<employee_info>> contact_list= com.dbconnector.contact_db_connector.get_contact_list_by_id(employee_id);
			   for(List<employee_info >contact_info_list:contact_list)
			   {
				   if(contact_info_list.size()!=0)  //判断查询队列是否为非空
				   {
				   switch(contact_info_list.get(0).get_employee_department_id())
				   {
					case 1: mv.addObject("contact_info_list2", contact_info_list);   break;
					case 2: mv.addObject("contact_info_list8", contact_info_list);   break;
					case 3: mv.addObject("contact_info_list3", contact_info_list);   break;
					case 4: mv.addObject("contact_info_list9", contact_info_list);   break;
					case 5: mv.addObject("contact_info_list4", contact_info_list);   break;
					case 6: mv.addObject("contact_info_list10", contact_info_list);  break;
					case 7: mv.addObject("contact_info_list1", contact_info_list);   break;
					case 8: mv.addObject("contact_info_list5", contact_info_list);   break;
					case 9: mv.addObject("contact_info_list7", contact_info_list);   break;
					case 10:mv.addObject("contact_info_list11", contact_info_list);  break;
					case 11:mv.addObject("contact_info_list6", contact_info_list);  break;

					default:
						    System.out.println("error");break;//不在列举范围之内，说明数据传输出错
				   }
				   }
			   }
			   return mv;
		}
		
		//查看四联部门列表
		@RequestMapping("contact/contact_department_check.do")
		public ModelAndView contact_department_check_request()
		{
			ModelAndView mv=new ModelAndView("department_check.jsp");
			List<contact_person_department_info> contact_person_department_info_list=com.dbconnector.contact_db_connector.get_contact_person_department_info();
			mv.addObject("contact_person_department_info_list", contact_person_department_info_list);
			return mv;
		}
		
		//四联部门添加子部门
				@RequestMapping("contact/department_add_son.do")
				public void deppartment_add_son(
						@RequestParam(value="contact_person_department_id")                int    contact_person_department_id,       //部门id
						@RequestParam(value="contact_person_department_sononeid")          int    contact_person_department_sononeid, //下属部门一
						@RequestParam(value="contact_person_department_sontwoid")          int    contact_person_department_sontwoid, //下属部门二
						@RequestParam(value="contact_person_department_sonthreeid")        int    contact_person_department_sonthreeid,//下属部门三
						@RequestParam(value="contact_person_department_sonfourid")        int     contact_person_department_sonfourid
						
						)
				{
					contact_person_department_info _contact_person_department_info=new contact_person_department_info();
					_contact_person_department_info.set_contact_person_department_id(contact_person_department_id);
					_contact_person_department_info.set_contact_person_department_sononeid(contact_person_department_sononeid);
					_contact_person_department_info.set_contact_person_department_sontwoid(contact_person_department_sontwoid);
					_contact_person_department_info.set_contact_person_department_sonthreeid(contact_person_department_sonthreeid);
					_contact_person_department_info.set_contact_person_department_sonfourid(contact_person_department_sonfourid);
					
					
					
					//为部门添加下属部门
					boolean rs=com.dbconnector.contact_db_connector.contact_person_department_add_son( _contact_person_department_info);
				}
				
		   //四联直线联系图显示
				@RequestMapping("contact/contact_department_detail_check.do")
				public ModelAndView department_detail_check(
						@RequestParam(value="contact_person_department_id")         int    contact_person_department_id,    //查询人员部门id
						@RequestParam(value="employee_id")                          int    employee_id                      //查询人员id
						)
				{
	                /*
					Map<String, contact_node> contact_map;//四联人员联络树
					contact_map=com.dbconnector.contact_db_connector.get_contact_map(contact_person_department_id,employee_id);
					
					ModelAndView mv=new ModelAndView("department_detail.jsp");
					
					List<contact_node> contact_node_list=new ArrayList<contact_node>();
					//遍历map，将联络树数据用key，value模式导入前端页面
					for(String node_code:contact_map.keySet())
					{
						
						contact_node_list.add(contact_map.get(node_code));
						int id=contact_map.get(node_code).get_contact_person_id();
						
					}
					
					for(int i=0;i<=7;i++)
					{
						List<contact_node> contact_node_child_list=new ArrayList<contact_node>();
						for(contact_node _contact_node:contact_node_list)
						{
							if(_contact_node.get_contact_node_level()==i)
							{
								contact_node_child_list.add(_contact_node);
							}
						}
						mv.addObject("contact_node_list"+i,contact_node_child_list);
					}
					
					
					return mv;
					
					*/
					
					ModelAndView mv=new ModelAndView("department_detail2.jsp");
					
					//直接下级部门list
					List<department_info> department_list=new ArrayList<department_info>();
					//直接下级部门人员
					List<employee_info> friend_list=new ArrayList<employee_info>();
					employee_info owner_info=com.dbconnector.management_db_connector.get_employee_info_by_id(employee_id);
					
					friend_list=com.dbconnector.contact_db_connector.get_direct_child_list_by_id(employee_id);
					department_list=com.dbconnector.contact_db_connector.get_department_list(friend_list);
					
					
					mv.addObject("department_list", department_list);
					mv.addObject("owner_info",owner_info);
					mv.addObject("friend_list", friend_list);
					
					return mv;
				}
			
		//四联添加用户关系
				
				
				@RequestMapping("contact/contact_relationship_add.do")
				public ModelAndView contact_relationship_add_request(
						@RequestParam(value="owner_employee_id")                    int    owner_employee_id,      //用户id
						@RequestParam(value="friend_employee_phone")                String   friend_employee_phone   //添加方用户电话
						)
				{
					ModelAndView mv=new ModelAndView("contact_response_data2.jsp");
					 employee_info friend_employee_info=com.dbconnector.contact_db_connector.get_employee_info_by_phone(friend_employee_phone);
					   
					    if(friend_employee_info!=null)
					    {
					    	 int friend_employee_id=friend_employee_info.get_employee_id();
					    	//利用主客方的员工信息中的部门id，在contact_person_department_info（部门关系表）中查询两者关系，
					    	//返回三种状态，客方为主方直接上级为0，客方为主方直接下级为1，客房不属于以上两种为2，状态值为2时不允许添加
					    	
					    	int relationship_type=com.dbconnector.contact_db_connector.get_contact_relationship_by_id(owner_employee_id, friend_employee_id);
					    	
					    	if(relationship_type==1)
					    	{
					    	//根据主客双方id查询部门id
					    	int contact_owner_department_id=com.dbconnector.management_db_connector.get_employee_info_by_id(owner_employee_id).get_employee_department_id();
					    	int contact_friend_department_id=com.dbconnector.management_db_connector.get_employee_info_by_id(friend_employee_id).get_employee_department_id();
					    	
					    		contact_relationship_info _contact_relationship_info=new contact_relationship_info();
					    		_contact_relationship_info.set_contact_owner_id(owner_employee_id);
					    		_contact_relationship_info.set_contact_friend_id(friend_employee_id);
					    		_contact_relationship_info.set_contact_relationship_type(relationship_type);
					    		_contact_relationship_info.set_contact_owner_department_id(contact_owner_department_id);
					    		_contact_relationship_info.set_contact_friend_department_id(contact_friend_department_id);
					    		boolean rs=com.dbconnector.contact_db_connector.insert_contact_relationship(_contact_relationship_info);
					    		//-----------------------------------------------
					    		String owner_name=com.dbconnector.management_db_connector.get_employee_info_by_id(owner_employee_id).get_employee_name();
					    		String friend_name=com.dbconnector.management_db_connector.get_employee_info_by_id(friend_employee_id).get_employee_name();
					    		contact_info _contact_info=new contact_info();
					    		_contact_info.set_owner_id(owner_employee_id);
					    		_contact_info.set_friend_id(friend_employee_id);
					    		_contact_info.set_contact_type(relationship_type);
					    		_contact_info.set_owner_name(owner_name);
					    		_contact_info.set_friend_name(friend_name);
					    		//向下插递归插入
					    		com.dbconnector.contact_db_connector.insert_contact(_contact_info);
					    		
					    		//-----------------------------------------------
					    		
					    		//正向反向更添加一次
					    		contact_relationship_info _contact_relationship_info2=new contact_relationship_info();
					    		_contact_relationship_info2.set_contact_owner_id(friend_employee_id);
					    		_contact_relationship_info2.set_contact_friend_id(owner_employee_id);
					    		_contact_relationship_info2.set_contact_relationship_type(0);
					    		_contact_relationship_info2.set_contact_owner_department_id(contact_friend_department_id);
					    		_contact_relationship_info2.set_contact_friend_department_id(contact_owner_department_id);
					    		boolean rs2=com.dbconnector.contact_db_connector.insert_contact_relationship(_contact_relationship_info2);
					    		//--------------------------------------------------
					    		contact_info _contact_info2=new contact_info();
					    		_contact_info2.set_owner_id(friend_employee_id);
					    		_contact_info2.set_friend_id(owner_employee_id);
					    		_contact_info2.set_contact_type(0);
					    		_contact_info2.set_owner_name(friend_name);
					    		_contact_info2.set_friend_name(owner_name);
					    		
					    	   //向上非递归插入
					    		com.dbconnector.contact_db_connector.insert_contact(_contact_info2);
					    		
					    		//---------------------------------------------------
					    		if(rs&&rs2==true)
					    		{
					    			mv.addObject("return_type", 1);
					    			 mv.addObject("msg","<p >姓名：<span>"+friend_employee_info.get_employee_name()+"</span><span>（"+friend_employee_info.get_employee_phone()+"）</span></p>"+
			    				             "<p>部门：<span>"+friend_employee_info.get_employee_department_name()+"</span></p>"+
			    				             "<p>职位：<span>"+friend_employee_info.get_employee_position()+"</span></p>"
			    				      );
					    		}
					    		else
					    		{
					    			mv.addObject("return_type", 0);
							    	mv.addObject("msg", "添加错误");
					    		}
					    	}
					    	else if(relationship_type==0)
					    	{
					    		mv.addObject("return_type", 2);//上级需确认后添加
					    		mv.addObject("msg", friend_employee_info.get_employee_phone());
					    		mv.addObject("contact_request_sender_id",owner_employee_id);
					    		mv.addObject("contact_request_receiver_id", friend_employee_info.get_employee_id());
					    	}
					    	else
					    	{
					    		mv.addObject("return_type", 0);
					    	    mv.addObject("msg","添加错误");
					    	}
					    }
					    else
					    {
					    	mv.addObject("return_type", 0);
					    	mv.addObject("msg", "添加错误");
					    }
					    
					    return mv;
				}

					    	
				@RequestMapping("contact/confirm_request.do")
				public ModelAndView confirm_request(
						@RequestParam(value="contact_request_sender_id")  int    contact_request_sender_id,
						@RequestParam(value="contact_request_receiver_id")int    contact_request_receiver_id,
						@RequestParam(value="cotact_reuqest_sendmsg")     String cotact_reuqest_sendmsg
						)
				{
					contact_add_request_info _contact_add_request_info=new contact_add_request_info();
					_contact_add_request_info.set_contact_request_sender_id(contact_request_sender_id);
					_contact_add_request_info.set_contact_request_receiver_id(contact_request_receiver_id);
					_contact_add_request_info.set_cotact_reuqest_sendmsg(cotact_reuqest_sendmsg);
					String contact_request_sender_name=com.dbconnector.management_db_connector.get_employee_info_by_id(contact_request_sender_id).get_employee_name();
					String contact_request_receiver_name=com.dbconnector.management_db_connector.get_employee_info_by_id(contact_request_receiver_id).get_employee_name();
					
					_contact_add_request_info.set_contact_request_sender_name(contact_request_sender_name);
					_contact_add_request_info.set_contact_request_receiver_name(contact_request_receiver_name);
					_contact_add_request_info.set_contact_request_status(0);//默认为0
					
					com.dbconnector.contact_db_connector.insert_confirm_request_form(_contact_add_request_info);
					
					
					
					ModelAndView mv=new ModelAndView("contact_person_check.do");
					System.out.println("---------------------"+contact_request_sender_id);
					System.out.println("---------------------"+contact_request_receiver_id);
					System.out.println("---------------------"+cotact_reuqest_sendmsg);
					return mv;
				}
				
				//四联好友添加显示功能
				@RequestMapping("contact/contact_msg_display.do")
				public ModelAndView contact_msg_display_request(
						
						@RequestParam(value="contact_request_receiver_id")  int    contact_request_receiver_id
						)
				{
					ModelAndView mv=new ModelAndView("contact_msg.jsp");
					List<contact_add_request_info> contact_msg_list=com.dbconnector.contact_db_connector.get_contact_msg_list_by_receiver_id(contact_request_receiver_id);
					mv.addObject("contact_msg_list", contact_msg_list);
					return mv;
				}
				
				//四联好友审批处理
				@RequestMapping("contact/contact_deal_commit.do")
				public ModelAndView contact_deal_commit(
				
						@RequestParam(value="contact_msg_id")  int    contact_msg_id,
						@RequestParam(value="is_agreed")       int    is_agreed
						
						)
				{
					contact_add_request_info _contact_add_request_info=com.dbconnector.contact_db_connector.get_contact_msg_info_by_msg_id(contact_msg_id);
					if(is_agreed==0)
					{
						com.dbconnector.contact_db_connector.update_msg_status(contact_msg_id,1);//通过
						
						int contact_owner_department_id=com.dbconnector.management_db_connector.get_employee_info_by_id(_contact_add_request_info.get_contact_request_sender_id()).get_employee_department_id();
				    	int contact_friend_department_id=com.dbconnector.management_db_connector.get_employee_info_by_id(_contact_add_request_info.get_contact_request_receiver_id()).get_employee_department_id();
				    	
				    	contact_relationship_info _contact_relationship_info=new contact_relationship_info();
			    		_contact_relationship_info.set_contact_owner_id(_contact_add_request_info.get_contact_request_sender_id());
			    		_contact_relationship_info.set_contact_friend_id(_contact_add_request_info.get_contact_request_receiver_id());
			    		_contact_relationship_info.set_contact_relationship_type(0);
			    		_contact_relationship_info.set_contact_owner_department_id(contact_owner_department_id);
			    		_contact_relationship_info.set_contact_friend_department_id(contact_friend_department_id);
			    		boolean rs1=com.dbconnector.contact_db_connector.insert_contact_relationship(_contact_relationship_info);
			    		
			    		//正向，反向更添加一次
			    		
			    		contact_relationship_info _contact_relationship_info2=new contact_relationship_info();
			    		_contact_relationship_info2.set_contact_owner_id(_contact_add_request_info.get_contact_request_receiver_id());
			    		_contact_relationship_info2.set_contact_friend_id(_contact_add_request_info.get_contact_request_sender_id());
			    		_contact_relationship_info2.set_contact_relationship_type(1);
			    		_contact_relationship_info2.set_contact_owner_department_id(contact_friend_department_id);
			    		_contact_relationship_info2.set_contact_friend_department_id(contact_owner_department_id);
			    		boolean rs2=com.dbconnector.contact_db_connector.insert_contact_relationship(_contact_relationship_info2);
			    		
					}
					else
					{
						com.dbconnector.contact_db_connector.update_msg_status(contact_msg_id,2);//未通过
					}
					ModelAndView mv=new ModelAndView("contact_msg_display.do?contact_request_receiver_id="+_contact_add_request_info.get_contact_request_receiver_id());
					return mv;
					
				}
				
				//四联添加
				@RequestMapping("contact/add.do")
				public ModelAndView contactadd(
						@RequestParam(value="owner_employee_id")                    int    owner_employee_id,      //用户id
						@RequestParam(value="friend_employee_phone")                String   friend_employee_phone   //添加方用户电话
						)
				{
					ModelAndView mv=new ModelAndView("contact_response_data.jsp");
					//利用输入对方电话，查询用户是否存在，存在的话，相关信息是什么
				    employee_info friend_employee_info=com.dbconnector.contact_db_connector.get_employee_info_by_phone(friend_employee_phone);
				   
				    if(friend_employee_info!=null)
				    {
				    	 int friend_employee_id=friend_employee_info.get_employee_id();
				    	//利用主客方的员工信息中的部门id，在contact_person_department_info（部门关系表）中查询两者关系，
				    	//返回三种状态，客方为主方直接上级为0，客方为主方直接下级为1，客房不属于以上两种为2，状态值为2时不允许添加
				    	
				    	int relationship_type=com.dbconnector.contact_db_connector.get_contact_relationship_by_id(owner_employee_id, friend_employee_id);
				    	
				    	
				    	if(relationship_type==0||relationship_type==1)
				    	{
				    		  mv.addObject("return_type", 0);
				    		  mv.addObject("msg","<p >姓名：<span>"+friend_employee_info.get_employee_name()+"</span><span>（"+friend_employee_info.get_employee_phone()+"）</span></p>"+
				    				             "<p>部门：<span>"+friend_employee_info.get_employee_department_name()+"</span></p>"+
				    				             "<p>职位：<span>"+friend_employee_info.get_employee_position()+"</span></p>"
				    				      );
				    		  mv.addObject("phone", friend_employee_phone);
				    	}
				    	else
				    	{
				    	    mv.addObject("return_type", 1);
				    		mv.addObject("msg","该用户不在您的直接上级或下级部门，请输入其它号码");
				    		//
				    		mv.addObject("phone", friend_employee_phone);
				    	}
				    	
				    }
				    else
				    {
				    	mv.addObject("return_type", 2);
				    	mv.addObject("msg", "用户不存在，请核对后重新输入");
				    	mv.addObject("phone", friend_employee_phone);
				    }    
				    return mv;
				}
				
				
				//点击显示下级联系人
				@RequestMapping("contact/contact_child_check.do")
				public ModelAndView contact_child_check(
						@RequestParam(value="employee_id")                          int    employee_id,//查询人员id
						@RequestParam(value="level")                                int    level       //层级
						)
				{
                    ModelAndView mv=new ModelAndView("dep_data.jsp");
					
					//直接下级部门list
					List<department_info> department_list=new ArrayList<department_info>();
					//直接下级部门人员
					List<employee_info> friend_list=new ArrayList<employee_info>();
					
					friend_list=com.dbconnector.contact_db_connector.get_direct_child_list_by_id(employee_id);
					department_list=com.dbconnector.contact_db_connector.get_department_list(friend_list);
					
					
					
					mv.addObject("department_list", department_list);
					mv.addObject("friend_list", friend_list);
					mv.addObject("level", level);
					
					return mv;
				}
				
	}

		
	