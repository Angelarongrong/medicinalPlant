package com.plant.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.plant.model.Guanli;


@Service @Transactional
public class UserDao {
	@Resource SessionFactory factory;
	
    public void AddAdmin(Guanli admin) throws Exception {
    	Session s = factory.getCurrentSession();
    	System.out.println("admin:"+admin);
    	s.save(admin);
    }
    
   
    public void DeleteAdmin (Integer xuhao) throws Exception {
        Session s = factory.getCurrentSession(); 
        Object admin = s.load(Guanli.class, xuhao);
        s.delete(admin);
    }
    
    
    public void UpdateAdmin(Guanli admin) throws Exception {
        Session s = factory.getCurrentSession();
        s.update(admin);
    }
    
    
    public ArrayList<Guanli> QueryAllAdmin() {
        Session s = factory.getCurrentSession();
        String hql = "From Guanli";
        Query q = s.createQuery(hql);
        List adminList = q.list();
        return (ArrayList<Guanli>) adminList;
    }

    /*ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È¡ï¿½ï¿½ï¿½ï¿½*/
    public Guanli GetAdminById(Integer xuhao) {
        Session s = factory.getCurrentSession();
        Guanli admin = (Guanli)s.get(Guanli.class, xuhao);
        return admin;
    }
    
    /*¸ù¾Ý²éÑ¯Ìõ¼þ²éÑ¯*/
    @SuppressWarnings("unchecked")
	public ArrayList<Guanli> QueryAdminInfo(String name) { 	
    	Session s = factory.getCurrentSession();
    	List<Guanli> adminList;
    	String hql = "From Guanli admin where 1=1";
    	if(!name.equals("")){ 
    		hql = hql + " and admin.guanli like '%" + name + "%'";
	    	Query q = s.createQuery(hql);
	    	adminList = q.list();
	    	
    	}else{   		
    	   adminList =null;	   	
    	}   	
    	return (ArrayList<Guanli>) adminList;
    }

}