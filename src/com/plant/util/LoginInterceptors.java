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
	    * 因为在配置文件的参数excludeName中，例外的action可能是若干个，中间用逗号间隔，
	    * 所以在取值时要把excludeName分解成单独的一个个action的名字，放在一个list中，strlist方法用来分解这些action的名字
	    * 假如逗号前后有空格，使用trim()方法去除这些空格
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
	   //拦截器初始化时把例外的action放入list中
	   public void init() {
	      list = strlsit(excludeName);
	   }
	   
	   //重载init()
	   //继承destroy()
	   public void destroy(){}
	   //intercept重载,自己编写

	   @Override

	   public String intercept(ActionInvocation invocation) throws Exception {
		   
			 System.out.println("--------进入拦截器-------"); 
			 
			 String actionName = invocation.getProxy().getActionName();   
			 Map <String,Object>  session = invocation.getInvocationContext().getSession(); //获取session
			 System.out.println("session:"+session);
			 System.out.println("list:"+list);
		     if(list.contains(actionName)){          
		    	System.out.println(actionName + "没有被拦截");
		        return invocation.invoke();     
		     }else {   	        
		    	System.out.println(actionName + "呀被拦截了");
		    	//判断当前用户是否已经登录
		        Guanli admin = (Guanli) session.get("admin");      
		        System.out.println("admin:"+admin);
		        		
		           if(admin==null){        	    // 用户还未登陆 	   
		                 HttpServletRequest req = ServletActionContext.getRequest();   // 获取HttpServletRequest对象 	  
		              // 获取此请求的地址，请求地址包含application name，进行subString操作，去除application name
		                 String path = req.getRequestURI().substring(16); // 获得请求中的参数 
		                 System.out.println("path:" + path);
		     			String queryString = req.getQueryString(); // 预防空指针 
		     			if (queryString == null) { 
		     				queryString = ""; 
		     			} // 拼凑得到登陆之前的地址 
		     			String realPath = path + "?" + queryString; // 存入session，方便调用 
		     			session.put("prePage", realPath);
		     			 System.out.println("prePage" + realPath);
		     			return "login";
		     		}else{ 
		     			// 用户已经登陆，放行      			
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