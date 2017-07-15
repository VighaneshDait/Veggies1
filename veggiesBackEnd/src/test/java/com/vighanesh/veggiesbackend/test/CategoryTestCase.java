package com.vighanesh.veggiesbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.vighanesh.veggiesbackend.dao.CategoryDAO;
import com.vighanesh.veggiesbackend.dto.Category;

public class CategoryTestCase {
    
	private static AnnotationConfigApplicationContext context;
	
	private static CategoryDAO categoryDAO;
	   
	
	private Category category;
	
	
	@BeforeClass
	public static void init(){
	      
		context=new AnnotationConfigApplicationContext();
		context.scan("com.vighanesh.veggiesbackend");
		context.refresh();
		categoryDAO=(CategoryDAO) context.getBean("categoryDAO");
		
	}
	
/*	@Test
	public void testAddCategory(){
	
	   category=new Category();
	   
	   category.setName("Vegitables2");
		category.setDescription("This is some description for Vegitables2");
		category.setImageURL("Cat_2.png");
		
		assertEquals("Successfully added a category inside the table!",true,categoryDAO.add(category));
	}*/
/*@Test
public void testGetCategory()
    { 
	 category= categoryDAO.get(1);    
	 assertEquals("Successfully fetched a single category from the table!","Vegitables1",category.getName());
    }
*/
	
	/*@Test
	public void testUpdateCategory()
	    { 
		 category= categoryDAO.get(1);
		 category.setName("Veg1");
		 assertEquals("Successfully updated a single category in the table!",true,categoryDAO.update(category));
	    }
	*/
	
	
/*	@Test
	public void testDeleteCategory()
	    { 
		 category= categoryDAO.get(1);
		 
		 assertEquals("Successfully Deleted a single category in the table!",true,categoryDAO.delete(category));
	    }
	*/
	
	/*@Test
	public void testListCategory()
	    { 
		 
		 assertEquals("Successfully fetched the list of category from the table!",1,categoryDAO.list().size());
	    }
	*/
	
	@Test
	public void testCRUDCategory(){
		
	
		category=new Category();
		   
		   category.setName("Vegitables1");
			category.setDescription("This is some description for Vegitables1");
			category.setImageURL("Cat_1.png");
		
			assertEquals("Successfully added a category inside the table!",true,categoryDAO.add(category));
		
	category=new Category();
			   
	   category.setName("Vegitables2");
		category.setDescription("This is some description for Vegitables2");
		category.setImageURL("Cat_2.png");
			
	assertEquals("Successfully added a category inside the table!",true,categoryDAO.add(category));
	
	category=new Category();
	   
	   category.setName("Vegitables3");
		category.setDescription("This is some description for Vegitables3");
		category.setImageURL("Cat_3.png");
			
	assertEquals("Successfully added a category inside the table!",true,categoryDAO.add(category));
	
	
	    
	   //fetching and updating the category 
	    
	    category= categoryDAO.get(2);
		 category.setName("Veg2");
		 assertEquals("Successfully updated a single category in the table!",true,categoryDAO.update(category));
	    
	   //deleting the category 
		 assertEquals("Successfully Deleted a single category in the table!",true,categoryDAO.delete(category));
		    
		//fetching the list 
		 assertEquals("Successfully fetched the list of category from the table!",2,categoryDAO.list().size());
		 
	}
	
	
	
	
	
	
	
	
	
	
}
