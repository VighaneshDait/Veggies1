package com.vighanesh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController 
{
   //@RequestMapping(value="/")
	//public String index()
	//{
	//	return "page";
	//}
   
   @RequestMapping(value="/")
   public ModelAndView index()
   {
	 ModelAndView mv=new ModelAndView("page");
	 return mv;
   }
}
