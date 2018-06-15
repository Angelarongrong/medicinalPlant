package com.plant.action;

import javax.annotation.Resource;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.plant.model.Guanli;
import com.plant.dao.UserDao;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller @Scope("prototype")

public class UserAction extends ActionSupport implements SessionAware{
	
@Resource UserDao adminDao;
	private static final long serialVersionUID = 1L;
	private String adminname;//
    private Guanli admin;
    /*
    private File custPhoto;
	 private String custPhotoFileName;
	 private String custPhotoContentType;
	*/ 
    private Map<String,Object> session;
	private String prePage;	
	 private List<Guanli> adminList;
	 private String keyWords;
	 private String result;
	 private String errMessage;
		
	

	public String reg() throws Exception{
		System.out.println("进入reg方法");
		/*
		String path = ServletActionContext.getServletContext().getRealPath("/upload"); 
        
		
        String CustPhotoFileName = ""; 
   	 	if(custPhoto!= null) {
   	 		InputStream is = new FileInputStream(custPhoto);
   			String fileContentType = this.getCustPhotoContentType();
   			System.out.println("fileContentType:"+fileContentType);
   			if(fileContentType.equals("image/jpeg")  || fileContentType.equals("image/pjpeg"))
   				custPhotoFileName = UUID.randomUUID().toString() +  ".jpg";
   			else if(fileContentType.equals("image/gif"))
   				custPhotoFileName = UUID.randomUUID().toString() +  ".gif";
   			else if(fileContentType.equals("image/png"))
   				custPhotoFileName = UUID.randomUUID().toString() +  ".png";

   			File file = new File(path, custPhotoFileName);
   			OutputStream os = new FileOutputStream(file);
   			byte[] b = new byte[1024];
   			int bs = 0;
   			while ((bs = is.read(b)) > 0) {
   				os.write(b, 0, bs);
   			}
   			is.close();
   			os.close();
   	 	}
   	 	
   	 	System.out.println("custPhoto:"+custPhoto);
        if(custPhoto != null)
        	customer.setFilepath("upload/" + custPhotoFileName);
        else
        	customer.setFilepath("upload/NoImage.jpg");
        */
		adminDao.AddAdmin(admin);
		session.put("admin", admin); //Map<String,Object> session;
		System.out.println("reg方法执行完成");
		return "show_view";
	}
	

	public String queryAdmin() throws Exception{
		System.out.println("123");
		adminList = adminDao.QueryAdminInfo(keyWords);
		System.out.println(keyWords);
		return "show_view1";
	}
	
	public String showCustomer(){
		adminList = adminDao.QueryAllAdmin();
		return "show_view2";
	}
	
	public String showDetail(){
		admin =adminDao.GetAdminById(admin.getXuhao());
		return "show_detail";
	}
	
	public String login() {
		System.out.println("into adminAction.login()");
		System.out.println("admin.getName():"+admin.getGuanli());
		ArrayList<Guanli> listAdmin = adminDao.QueryAdminInfo(admin.getGuanli());
		if(listAdmin.size()==0) { 		
			this.errMessage = "用户名不存在";
			System.out.print(this.errMessage);
			return "logininput";
			
		} 
		else{			
		    Guanli db_admin = listAdmin.get(0);
			if(!db_admin.getMima().equals(admin.getMima())) {		
				this.errMessage = " 密码不正确 ";
				System.out.print(this.errMessage);
				return "logininput";
			
		    }else{			
				session.put("admin", db_admin);
				//session.put("name", db_admin.getGuanli());
				System.out.println("登录验证成功");
				return "success";
		    }
		}
	}


	public UserDao getAdminDao() {
		return adminDao;
	}


	public void setAdminDao(UserDao adminDao) {
		this.adminDao = adminDao;
	}


	public String getAdminname() {
		return adminname;
	}


	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}


	public Guanli getAdmin() {
		return admin;
	}


	public void setAdmin(Guanli admin) {
		this.admin = admin;
	}


	public List<Guanli> getAdminList() {
		return adminList;
	}


	public void setAdminList(List<Guanli> adminList) {
		this.adminList = adminList;
	}


	public String getKeyWords() {
		return keyWords;
	}


	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}


	public String getResult() {
		return result;
	}


	public void setResult(String result) {
		this.result = result;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	public Map<String, Object> getSession() {
		return session;
	}


	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


	public String getPrePage() {
		return prePage;
	}


	public void setPrePage(String prePage) {
		this.prePage = prePage;
	}


	public String getErrMessage() {
		return errMessage;
	}


	public void setErrMessage(String errMessage) {
		this.errMessage = errMessage;
	}

	


}