
package com.viewcontroller;

import java.io.ByteArrayOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.data.contact_person_department_info;
import com.data.contact_person_info;
import com.data.department_relationship_info;
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
			  com.dbconector.contact_db_connector.relationship_insert_db(_relationship_info);
			
			
			
			
			 ModelAndView mv=new ModelAndView();
			  
			   
			   return mv;
		}
		
		//部门关系添加请求
		@RequestMapping("contact/department_relationship_add.do")
		public ModelAndView department_relationship_add_request(
				@RequestParam(value="department_relationship_upper_name")     String    department_relationship_upper_name , //主方id
			    @RequestParam(value="department_relationship_upper_id")       int       department_relationship_upper_id,
				@RequestParam(value="department_relationship_downer_name")    String    department_relationship_downer_name,
				@RequestParam(value="department_relationship_downer_id")      int       department_relationship_downer_id,
	            @RequestParam(value="department_relationship_upper_level")    int       department_relationship_upper_level
				)
		{
			//初始化relationship_info对象
		    department_relationship_info _department_relationship_info=new department_relationship_info();
		    _department_relationship_info.set_department_relationship_upper_name(department_relationship_upper_name);
		    _department_relationship_info.set_department_relationship_upper_id(department_relationship_upper_id);
		    _department_relationship_info.set_department_relationship_downer_id(department_relationship_downer_id);
		    _department_relationship_info.set_department_relationship_downer_name(department_relationship_downer_name);
		    _department_relationship_info.set_department_relationship_upper_level(department_relationship_upper_level);
			
			//添加系统时间
			   Date date=new Date();
			   DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			   String department_relationship_addtime=format.format(date);
			   _department_relationship_info.set_department_relationship_addtime(department_relationship_addtime);
			   //插入数据库
			 //department_relationship_insert_db(_department_relationship_info);
			  com.dbconector.contact_db_connector.department_relationship_insert_db(_department_relationship_info);
			
			
			
			
			 ModelAndView mv=new ModelAndView("department_relationship_add");
			  
			   
			   return mv;
		}
		
		@RequestMapping("contact/department_relationship_check.do")
		public ModelAndView department_relationship_check_request(
				@RequestParam(value="department_relationship_upper_id") int department_relationship_upper_id
				) throws ParserConfigurationException, TransformerException
		{
			//以输入上级部门id，查询所有对应关系
			List<department_relationship_info> department_relationship_list=new ArrayList<department_relationship_info>();
			
			List<department_relationship_info> department_relationship_level1_list= com.dbconector.contact_db_connector.get_department_ralationship_list_by_upper_id(department_relationship_upper_id);
			
			List<department_relationship_info> department_relationship_level2_list=new ArrayList<department_relationship_info>();
			for(department_relationship_info dinfo1:department_relationship_level1_list)
			{
				department_relationship_level2_list.addAll( com.dbconector.contact_db_connector.get_department_ralationship_list_by_upper_id(dinfo1.get_department_relationship_downer_id()));
			}
			department_relationship_list.addAll(department_relationship_level2_list);
			department_relationship_list.addAll(department_relationship_level1_list);
			
	
			
			
			
			ModelAndView mv=new ModelAndView("department_relationship_check");
			String xml= com.dbconector.contact_db_connector.convert_department_relationship_list_to_xml(department_relationship_list);
			mv.addObject("department_relationship_list", department_relationship_list);
			mv.addObject("xml", xml);
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
			   com.dbconector.contact_db_connector.contact_person_insert_db(_contact_person_info);
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
			
			 com.dbconector.contact_db_connector.contact_person_department_insert_db(_contact_person_department_info);
		}
		
		@RequestMapping("contact/contact_person_check.do")
		public ModelAndView contact_person_check_request()
		{
			 ModelAndView mv=new ModelAndView("index");
			   //根据组织机构id分组，得到全部四联人员信息的二维数组
			   List<List<contact_person_info>> contact_list= com.dbconector.contact_db_connector.get_contact_list_by_department();
			   
			   for(List<contact_person_info >contact_info_list:contact_list)
			   {
				   switch(contact_info_list.get(0).get_contact_person_department_id())
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
			   return mv;
		}
	}

		
	