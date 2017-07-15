package com.vighanesh.veggiesbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.vighanesh.veggiesbackend.dao.ProductDAO;
import com.vighanesh.veggiesbackend.dto.Product;

public class ProductTestCase {
	
	private static AnnotationConfigApplicationContext context;
	
	private static ProductDAO productDAO;
	
	private Product product;
	

	@BeforeClass
	public static void init(){
	      
		context=new AnnotationConfigApplicationContext();
		context.scan("com.vighanesh.veggiesbackend");
		context.refresh();
		productDAO=(ProductDAO)context.getBean("productDAO");
		
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
/*	
	@Test
	public void testCRUDCategory(){
		
	
		product=new Product();
		   
		   product.setName("Oppo Selfie S53");
			product.setDescription("This is some description for Oppo mobile phones!");
			product.setUnitprice(25000);
			product.setActive(true);
			product.setCategoryId(3);
			product.setSupplierId(3);
			
			
		
			assertEquals("Something went wrong while inserting the existing record!",true,productDAO.add(product));
		
	
	    
	   //fetching and updating the category 
	    
	    product= productDAO.get(2);
		product.setName("Samsung Galaxy S7");
		 assertEquals("Something went wrong while updating the existing record!",true,productDAO.update(product));
	    
	   //deleting the category 
		 assertEquals("Something went wrong while deleting the existing record!",true,productDAO.delete(product));
		    
		//fetching the list 
		 assertEquals("Successfully fetched the list of category from the table!",6,productDAO.list().size());

	}
	*/
	
	@Test
	public void testListActiveProducts()
	{
		 assertEquals("Successfully fetched the list of category from the table!",5,productDAO.listActiveProducts().size());

		
	}
	

	@Test
	public void testListActiveProductsByCategory()
	{
		 assertEquals("Something went wrong while fetching the list of products!",3,productDAO.listActiveProductsByCategory(3).size());

		 assertEquals("Something went wrong while fetching the list of products!",2,productDAO.listActiveProductsByCategory(1).size());

	}
	
	@Test
	public void testGetLatestActiveProducts()
	{
		 assertEquals("Something went wrong while fetching the list of products!",3,productDAO.getLatestActiveProducts(3).size());

		 
	}
	
	
	
	
	

}
