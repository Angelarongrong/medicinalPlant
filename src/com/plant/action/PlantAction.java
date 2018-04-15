package com.plant.action;
import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import com.plant.dao.PlantDao;
import com.plant.model.Plants;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class PlantAction extends ActionSupport{
	/*业务层对象 将songsDao注入*/
	@Resource PlantDao plantDao;
	
	 private Plants plant;
	 private File plantPhoto;
	 private String plantPhotoFileName;
	 private String plantPhotoContentType;
	 private List<Plants> plantslist;
	 private String keywords;
	
	 public PlantDao getPlantDao() {
			return plantDao;
		}

		public void setPlantDao(PlantDao plantDao) {
			this.plantDao = plantDao;
		}

		public Plants getPlant() {
			return plant;
		}

		public void setPlant(Plants plant) {
			this.plant = plant;
		}

		public File getPlantPhoto() {
			return plantPhoto;
		}

		public void setPlantPhoto(File plantPhoto) {
			this.plantPhoto = plantPhoto;
		}

		public String getPlantPhotoFileName() {
			return plantPhotoFileName;
		}

		public void setPlantPhotoFileName(String plantPhotoFileName) {
			this.plantPhotoFileName = plantPhotoFileName;
		}

		public String getPlantPhotoContentType() {
			return plantPhotoContentType;
		}

		public void setPlantPhotoContentType(String plantPhotoContentType) {
			this.plantPhotoContentType = plantPhotoContentType;
		}

		public List<Plants> getPlantslist() {
			return plantslist;
		}

		public void setPlantslist(List<Plants> plantslist) {
			this.plantslist = plantslist;
		}
		
		public String getKeywords() {
			return keywords;
		}
		
		public void setKeywords(String keywords) {
			this.keywords = keywords;
		}
	
	
	
	public String addPlant() throws Exception{
		String path = ServletActionContext.getServletContext().getRealPath("/upload"); 
        /*处理图片上传*/
        String PlantPhotoFileName = ""; 
   	 	if(plantPhoto!= null) {
   	 		InputStream is = new FileInputStream(plantPhoto);
   			String fileContentType = this.getPlantPhotoContentType();
   			System.out.println(fileContentType);
   			if(fileContentType.equals("image/jpeg")  || fileContentType.equals("image/pjpeg"))
   				plantPhotoFileName = UUID.randomUUID().toString() +  ".jpg";
   			else if(fileContentType.equals("image/gif"))
   				plantPhotoFileName = UUID.randomUUID().toString() +  ".gif";
   			else if(fileContentType.equals("image/png"))
   				plantPhotoFileName = UUID.randomUUID().toString() +  ".png";

   			File file = new File(path, plantPhotoFileName);
   			OutputStream os = new FileOutputStream(file);
   			byte[] b = new byte[1024];
   			int bs = 0;
   			while ((bs = is.read(b)) > 0) {
   				os.write(b, 0, bs);
   			}
   			is.close();
   			os.close();
   	 	}
        if(plantPhoto != null)
        	plant.setFilepath("upload/" + plantPhotoFileName);
        else
        	plant.setFilepath("upload/NoImage.jpg");
        
		
		plantDao.addPlant(plant);
		
		return "message";
	}
	
	public String showPlant(){
		plantslist = plantDao.QueryAllPlants();
		return "show_view";
	}
	
	public String showPlant1(){
		plantslist = plantDao.QueryAllPlants();
		return "show_view1";
	}
	
	public String showPlant2(){
		plantslist = plantDao.QueryAllPlants();
		return "show_view2";
	}
	
	public String showDetail(){
		plant = plantDao.GetPlantById(plant.getPlid());
		return "detail_view";
	}
	
	public String showEdit() throws Exception{
		plant = plantDao.GetPlantById(plant.getPlid());
		return "edit_view";
		
		
	}
	public String editPlant() throws Exception{
		String path = ServletActionContext.getServletContext().getRealPath("/upload"); 
        /*处理图片上传*/
        String PlantPhotoFileName = ""; 
   	 	if(plantPhoto!= null) {
   	 		InputStream is = new FileInputStream(plantPhoto);
   			String fileContentType = this.getPlantPhotoContentType();
   			System.out.println(fileContentType);
   			if(fileContentType.equals("image/jpeg")  || fileContentType.equals("image/pjpeg"))
   				plantPhotoFileName = UUID.randomUUID().toString() +  ".jpg";
   			else if(fileContentType.equals("image/gif"))
   				plantPhotoFileName = UUID.randomUUID().toString() +  ".gif";
   			else if(fileContentType.equals("image/png"))
   				plantPhotoFileName = UUID.randomUUID().toString() +  ".png";

   			File file = new File(path, plantPhotoFileName);
   			OutputStream os = new FileOutputStream(file);
   			byte[] b = new byte[1024];
   			int bs = 0;
   			while ((bs = is.read(b)) > 0) {
   				os.write(b, 0, bs);
   			}
   			is.close();
   			os.close();
   	 	}
        if(plantPhoto != null)
        	plant.setFilepath("upload/" + plantPhotoFileName);
        else
        	plant.setFilepath("upload/NoImage.jpg");
        
		
		plantDao.updatePlant(plant);
		return "edit_message";	
	}
	
	
	public String deletePlant() throws Exception{
		plantDao.deletePlant(plant.getPlid());
		return "delete_message";
		
	}
	public String queryPlant() throws Exception{
		System.out.println("into plantAction.queryPlant");
		plantslist = plantDao.QueryPlantsInfo(keywords);
		return "show_view";
	}
	
	
		
	

	
	
	
}
