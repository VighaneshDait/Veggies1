package com.vighanesh.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.vighanesh.veggiesbackend.dao.CategoryDAO;
import com.vighanesh.veggiesbackend.dao.ProductDAO;
import com.vighanesh.veggiesbackend.dto.Category;
import com.vighanesh.veggiesbackend.dto.Product;

@Controller
public class PageController 
{
	
	private static final Logger logger = LoggerFactory.getLogger(PageController.class);
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
   //@RequestMapping(value= {"/","/home","/index"})
	//public String index()
	//{
	//	return "page";
	//}
   
   @RequestMapping(value={"/","/home","/index"})
   public ModelAndView index()
   {
	 ModelAndView mv=new ModelAndView("page");
	 mv.addObject("title","Home");
	
	 logger.info("Inside Page controller index method-INFO");
	 logger.debug("Inside Page controller index method-DEBUG");
	 
	 //passing the list of categories.
	 mv.addObject("categories",categoryDAO.list());
	 
	 mv.addObject("userClickHome",true);
	 return mv;
   }
   
   @RequestMapping(value="/about")
   public ModelAndView about()
   {
	 ModelAndView mv=new ModelAndView("page");
	 mv.addObject("title","About Us");
	 
	 mv.addObject("categories",categoryDAO.list());
	 
	 mv.addObject("userClickAbout",true);
	 return mv;
   }
   
   @RequestMapping(value="/contact")
   public ModelAndView contact()
   {
	 ModelAndView mv=new ModelAndView("page");
	 mv.addObject("title","Contact");
	 
	 mv.addObject("categories",categoryDAO.list());
	 
	 mv.addObject("userClickContact",true);
	 return mv;
   }
   
   @RequestMapping(value="/show/category/{id}/products")
   public ModelAndView showCategoryProducts(@PathVariable("id") int id)
   {
	 ModelAndView mv=new ModelAndView("page");
	 
	 //categoryDAO to fetch single category
	 Category category=null;
	 category=categoryDAO.get(id);
	 mv.addObject("title",category.getName());
	 
	 //passing the list of categories.
	 mv.addObject("categories",categoryDAO.list());
	 
	 //passing the single category Object
	 mv.addObject("category",category);
	 
	 mv.addObject("userClickcategoryProducts",true);
	 return mv;
   }
   
   /*
    * viewing a single product
    */
   
   @RequestMapping(value= "/show/{id}/product")
   public ModelAndView showSingleProduct(@PathVariable int id){
	   
	   ModelAndView mv=new ModelAndView("page");
	   
	   Product product = productDAO.get(id);
	   
	   //Update the View Count
	   product.setViews(product.getViews()+1);
	   productDAO.update(product);
	   
	   mv.addObject("title",product.getName());
	   mv.addObject("product", product);
	   
	   mv.addObject("userClickShowProduct",true);
	   
	   mv.addObject("categories",categoryDAO.list());
		   
	   
	   
	   return mv;
	   
   }
   
   
   
}
