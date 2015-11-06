package com.dbconnector;

import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import com.dao.contact_person_department_info_dao;
import com.dao.contact_person_info_dao;
import com.dao.department_relationship_info_dao;
import com.dao.relationship_info_dao;
import com.data.contact_person_department_info;
import com.data.contact_person_info;
import com.data.department_relationship_info;
import com.data.relationship_info;
import com.mybatis.mybatis_connection_factory;

public class contact_db_connector 
{
	
	//发起任务时，将任务信息加入数据库
	public static boolean relationship_insert_db(relationship_info _relationship_info)  
	{
		relationship_info_dao _relationship_info_dao=new relationship_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		boolean rs=_relationship_info_dao.insert(_relationship_info);
		return rs;
	}
	
	public static boolean department_relationship_insert_db(department_relationship_info _department_relationship_info)  
	{
		department_relationship_info_dao _department_relationship_info_dao=new department_relationship_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		boolean rs=_department_relationship_info_dao.insert(_department_relationship_info);
		return rs;
	}
	
	//以输入上级部门id，查询所有对应关系
	public  static List<department_relationship_info> get_department_ralationship_list_by_upper_id(int department_relationship_upper_id)
	{
		  
		   department_relationship_info_dao _department_relationship_info_dao=new department_relationship_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		   List<department_relationship_info> list=_department_relationship_info_dao.select_by_upper_id(department_relationship_upper_id);
		   return list; 
	}
	
	
	//将查询数据结构转换为xml文件,便于
	public static String convert_department_relationship_list_to_xml(List<department_relationship_info> list) throws ParserConfigurationException, TransformerException
	{
		
		
		String xmlStr=null;
		String root_name=null;
		String    root_id;
		DocumentBuilderFactory factory=DocumentBuilderFactory.newInstance();
		DocumentBuilder builder=factory.newDocumentBuilder();
		Document document=builder.newDocument();
	     document.setXmlVersion("1.0");
		
		
		for(int i=1;i<=2;i++)
		{
		   for(department_relationship_info dinfo:list)
		   {
			   if(dinfo.get_department_relationship_upper_level()==i)
			   {
				   if(root_name==null)
				   {
					   System.out.println("root:"+dinfo.get_department_relationship_upper_name());
					   root_name=dinfo.get_department_relationship_upper_name();
					   root_id=dinfo.get_department_relationship_upper_id()+"";
					   Element root=document.createElement("node"+(i-1));
					   root.setAttribute("name", root_name);
					   root.setAttribute("id", root_id);
					   document.appendChild(root);
				   }
				   
				   NodeList eles=document.getElementsByTagName("node"+(i-1));
				   for(int m=0;m<eles.getLength();m++)
				   {
					   Element upper_ele=(Element)eles.item(m);
					   if(upper_ele.getAttribute("id").equals(dinfo.get_department_relationship_upper_id()+""))
					   {
						   Element downer_ele=document.createElement("node"+i);
						   
						   String node_name=dinfo.get_department_relationship_downer_name();
						   String node_id=dinfo.get_department_relationship_downer_id()+"";
						   downer_ele.setAttribute("name", node_name);
						   downer_ele.setAttribute("id", node_id);
						   upper_ele.appendChild(downer_ele);
					   }
				   }
				   
			   }
		   }
		}
		
		 TransformerFactory transFactory = TransformerFactory.newInstance();
         Transformer transFormer = transFactory.newTransformer();
         transFormer.setOutputProperty(OutputKeys.INDENT,"yes");
         DOMSource domSource = new DOMSource(document);

         //export string
         ByteArrayOutputStream bos = new ByteArrayOutputStream();
         transFormer.transform(domSource, new StreamResult(bos));
         xmlStr = bos.toString();
			
		
		System.out.println(xmlStr);
		
		return xmlStr;
	}
	
//四联人员或组织信息表数据库功能函数
	
	//人员插入数据库
	public static boolean contact_person_insert_db(contact_person_info _contact_person_info)  
	{
		contact_person_info_dao _contact_person_info_dao=new contact_person_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		boolean rs=_contact_person_info_dao.insert(_contact_person_info);
		return rs;
	}

   //组织插入数据库
	public static boolean contact_person_department_insert_db(contact_person_department_info _contact_person_department_info)
	{
		contact_person_department_info_dao _contact_person_department_info_dao=new contact_person_department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		boolean rs=_contact_person_department_info_dao.insert(_contact_person_department_info);
		return rs;
	}
	
	//根据组织机构分组，查询全部四联人员信息
	
	public static List<List<contact_person_info>> get_contact_list_by_department()
	{
		contact_person_info_dao _contact_person_info_dao=new contact_person_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		contact_person_department_info_dao _contact_person_department_info_dao=new contact_person_department_info_dao(mybatis_connection_factory.getSqlSessionFactory());
		
		 List<List<contact_person_info>> person_list=new ArrayList<List<contact_person_info>>();
		 
		 List<contact_person_department_info> contact_person_department_list=_contact_person_department_info_dao.select_all();
		 
		 for(contact_person_department_info _department_info:contact_person_department_list)
		 {
			 System.out.println(_department_info.get_contact_person_department_name());
			 int contact_person_department_id=_department_info.get_contact_person_department_id();
			 List<contact_person_info> person_info_list=_contact_person_info_dao.get_contact_person_info_list_by_department_id(contact_person_department_id);
			 person_list.add(person_info_list);
		 }
		 
		 return person_list;
	}
	


}
