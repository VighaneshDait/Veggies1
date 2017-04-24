package com.vighanesh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController 
{
   //@RequestMapping(value= {"/","/home","/index"})
	//public String index()
	//{
	//	return "page";
	//}
   
   @RequestMapping(value={"/","/home","/index"})
   public ModelAndView index()
   {
	 ModelAndView mv=new ModelAndView("page");
	 return mv;
   }
}
