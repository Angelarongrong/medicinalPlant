package com.plant.dao;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javassist.bytecode.Descriptor.Iterator;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.plant.model.Plants;

@Service @Transactional
public class PlantDao {
@Resource SessionFactory factory;
	
	public void addPlant(Plants plant){
		Session s= factory.getCurrentSession();
		s.save(plant);
		
	}
	
	public void deletePlant(Integer plantid){
		Session s= factory.getCurrentSession();
		Object plant= s.load(Plants.class, plantid);
		s.delete(plant);
		
	}
	
    public void updatePlant(Plants plant) throws Exception {
        Session s = factory.getCurrentSession();
        s.update(plant);
    }
    
    public ArrayList<Plants> QueryAllPlants() {
        Session s = factory.getCurrentSession();
        String hql = "From Plants";
        Query q = s.createQuery(hql);
        List plantslist = q.list();
        return (ArrayList<Plants>) plantslist;
    }
    
    public Plants GetPlantById(Integer plantid) {
        Session s = factory.getCurrentSession();
        Plants plant = (Plants)s.get(Plants.class, plantid);
        return plant;
    }
    
    public ArrayList<Plants> QueryPlantsInfo(String keyword) { 
    	System.out.println(keyword);
    	keyword.replace("'", "");
    	Session s = factory.getCurrentSession();
    	//String hql = "From plants plant where 1=1";
    	String hql = "FROM Plants";
    	List<Plants> plantslist = new ArrayList();
    	/*
    	String hql1 = "From plants plant where 1=1";
    	String hql2 = "From plants plant where 1=1";
    	*/
    	if(!keyword.equals("")) {
    		//hql = hql + " and plant.scname like '%" + keyword + "%'";    		
    		String hql1 = hql + " where faname like '%" + keyword + "%'";
    		String hql2 = hql + " where vnumber like '%" + keyword + "%'";
    		String hql3 = hql + " where faname like '%" + keyword + "%'";
    		String hql4 = hql + " where genera like '%" + keyword + "%'";
    		String hql5 = hql + " where loname like '%" + keyword + "%'";
    		String	hql6 = hql + " where purpose like '%" + keyword + "%'";
    		String	hql7 = hql + " where pusage like '%" + keyword + "%'";
    		String	hql8 = hql + " where partused like '%" + keyword + "%'";
    		String	hql9 = hql + " where vnumber like '%" + keyword + "%'";
    		String	hql10 = hql + " where rivalue like '%" + keyword + "%'";
    		String	hql11 = hql + " where remarks like '%" + keyword + "%'";
    		String	hql12 = hql + " where scchname like '%" + keyword + "%'";
    		String	hql13 = hql + " where chgenara like '%" + keyword + "%'";
    		String	hql14 = hql + " where chfaname like '%" + keyword + "%'";
    		String	hql15 = hql + " where chloname like '%" + keyword + "%'";//模糊查询 ,不要乱加空格哦
    		String hql16 = hql + " where scname like '%" + keyword + "%'";
    	System.out.println(hql16);
    	System.out.println(hql1);
    	System.out.println(hql2);
    	Query q = s.createQuery(hql16);
    	List<Plants> plantslist1 = q.list();
    	Query q1 = s.createQuery(hql1);
    	List<Plants> plantslist2 = q1.list();
    	Query q2 = s.createQuery(hql2);
    	List<Plants> plantslist3 = q2.list();
    	Query q3 = s.createQuery(hql3);
    	List<Plants> plantslist4 = q3.list();
    	Query q4 = s.createQuery(hql4);
    	List<Plants> plantslist5 = q4.list();
    	Query q5 = s.createQuery(hql5);
    	List<Plants> plantslist6 = q5.list();
    	Query q6 = s.createQuery(hql6);
    	List<Plants> plantslist7 = q6.list();
    	Query q7 = s.createQuery(hql7);
    	List<Plants> plantslist8 = q7.list();
    	Query q8 = s.createQuery(hql8);
    	List<Plants> plantslist9 = q8.list();
    	Query q9 = s.createQuery(hql9);
    	List<Plants> plantslist10 = q9.list();
    	Query q10 = s.createQuery(hql10);
    	List<Plants> plantslist11 = q10.list();
    	Query q11 = s.createQuery(hql11);
    	List<Plants> plantslist12 = q11.list();
    	Query q12 = s.createQuery(hql12);
    	List<Plants> plantslist13 = q12.list();
    	Query q13 = s.createQuery(hql13);
    	List<Plants> plantslist14 = q13.list();
    	Query q14 = s.createQuery(hql14);
    	List<Plants> plantslist15 = q14.list();
    	Query q15 = s.createQuery(hql15);
    	List<Plants> plantslist16 = q15.list();
    	
    	plantslist.addAll(plantslist1);
    	plantslist.addAll(plantslist2);
    	plantslist.addAll(plantslist3);
    	plantslist.addAll(plantslist4);
    	plantslist.addAll(plantslist5);
    	plantslist.addAll(plantslist6);
    	plantslist.addAll(plantslist7);
    	plantslist.addAll(plantslist8);
    	plantslist.addAll(plantslist9);
    	plantslist.addAll(plantslist10);
    	plantslist.addAll(plantslist11);
    	plantslist.addAll(plantslist12);
    	plantslist.addAll(plantslist13);
    	plantslist.addAll(plantslist14);
    	plantslist.addAll(plantslist15);
    	plantslist.addAll(plantslist16);
    //	System.out.println("plantslist:"+plantslist);
    	}
    	
    	  for(int i = 0;i<plantslist.size();i++){//循环list
    	         for(int j = i+1;j<plantslist.size();j++){
    	                 if(plantslist.get(i).equals(plantslist.get(j))){
    	                        plantslist.remove(i);//删除一样的元素
    	                        i--;
    	                        break;
    	                 }
    	         }
    	  }
    	  for(int i = 0;i<plantslist.size();i++){
    	   System.out.println(plantslist.get(i));
    	  }
    	  
    	return (ArrayList<Plants>) plantslist;
    }
    
    
    
}
