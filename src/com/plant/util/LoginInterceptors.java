package com.plant.util;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.plant.model.Guanli;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptors extends AbstractInterceptor{ 
	   private static final long serialVersionUID = 1L;
	   private String sessionName;
	   private String excludeName;	   
	   private List <String> list;
	   /*
	    * ��Ϊ�������ļ��Ĳ���excludeName�У������action���������ɸ����м��ö��ż����
	    * ������ȡֵʱҪ��excludeName�ֽ�ɵ�����һ����action�����֣�����һ��list�У�strlist���������ֽ���Щaction������
	    * ���綺��ǰ���пո�ʹ��trim()����ȥ����Щ�ո�
	    */
	   public List<String>  strlsit(String str){

	     String[] s = str.split(",");
	     List <String> list = new ArrayList <String>();
	     for(String ss : s){
	        list.add(ss.trim());
	     }
	     return list;
	   }

	   @Override
	   //��������ʼ��ʱ�������action����list��
	   public void init() {
	      list = strlsit(excludeName);
	   }
	   
	   //����init()
	   //�̳�destroy()
	   public void destroy(){}
	   //intercept����,�Լ���д

	   @Override

	   public String intercept(ActionInvocation invocation) throws Exception {
		   
			 System.out.println("--------����������-------"); 
			 
			 String actionName = invocation.getProxy().getActionName();   
			 Map <String,Object>  session = invocation.getInvocationContext().getSession(); //��ȡsession
			 System.out.println("session:"+session);
			 System.out.println("list:"+list);
		     if(list.contains(actionName)){          
		    	System.out.println(actionName + "û�б�����");
		        return invocation.invoke();     
		     }else {   	        
		    	System.out.println(actionName + "ѽ��������");
		    	//�жϵ�ǰ�û��Ƿ��Ѿ���¼
		        Guanli admin = (Guanli) session.get("admin");      
		        System.out.println("admin:"+admin);
		        		
		           if(admin==null){        	    // �û���δ��½ 	   
		                 HttpServletRequest req = ServletActionContext.getRequest();   // ��ȡHttpServletRequest���� 	  
		              // ��ȡ������ĵ�ַ�������ַ����application name������subString������ȥ��application name
		                 String path = req.getRequestURI().substring(16); // ��������еĲ��� 
		                 System.out.println("path:" + path);
		     			String queryString = req.getQueryString(); // Ԥ����ָ�� 
		     			if (queryString == null) { 
		     				queryString = ""; 
		     			} // ƴ�յõ���½֮ǰ�ĵ�ַ 
		     			String realPath = path + "?" + queryString; // ����session��������� 
		     			session.put("prePage", realPath);
		     			 System.out.println("prePage" + realPath);
		     			return "login";
		     		}else{ 
		     			// �û��Ѿ���½������      			
		     			return invocation.invoke();  
		     		}
		     } 	
	   	}
	   
	             

	   public String getSessionName() {

	     return sessionName;

	   }

	   public void setSessionName(String sessionName) {

	     this.sessionName = sessionName;

	   }

	   public String getExcludeName() {

	     return excludeName;

	   }

	   public void setExcludeName(String excludeName) {

	     this.excludeName = excludeName;

	   }

	   public List<String> getList() {

	     return list;

	   }

	   public void setList(List<String> list) {

	     this.list = list;

	   }


	}