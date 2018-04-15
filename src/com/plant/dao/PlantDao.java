package com.plant.dao;
import java.util.ArrayList;
import java.util.List;

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
    	Session s = factory.getCurrentSession();
    	String hql = "From plants plant where 1=1";
    	if(!keyword.equals("")) 
    		hql = hql + " and plant.scname like '%" + keyword + "%'";
    	else if(!keyword.equals("")) 
    		hql = hql + " and plant.faname like '%" + keyword + "%'";
    	else if(!keyword.equals("")) 
    		hql = hql + " and plant.vnumber like '%" + keyword + "%'";//模糊查询 ,不要乱加空格哦
    	System.out.println(hql);
    	Query q = s.createQuery(hql);
    	List<Plants> plantslist = q.list();
    	return (ArrayList<Plants>) plantslist;
    }
    
}
