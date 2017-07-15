package com.vighanesh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vighanesh.veggiesbackend.dao.ProductDAO;
import com.vighanesh.veggiesbackend.dto.Product;

@Controller
@RequestMapping("/json/data")
public class JsonDataController {
	
	
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("/category/{id}/products")
	@ResponseBody
	public List<Product> getProductsByCategory(@PathVariable int id){
		
		return productDAO.listActiveProductsByCategory(id);
	}

}
