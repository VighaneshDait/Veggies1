package com.vighanesh.veggiesbackend.dto;

import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
/*import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.Range;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;
*/
@Entity
public class Product {
   
	//private fields
     @Id
     @GeneratedValue(strategy = GenerationType.IDENTITY)
     private int Id;
     private String code;
     private String name;
     private String description;
     @Column(name= "unit_price")
     private double unitprice;
     private int quantity;
     @Column(name= "is_active")
     private boolean active;
     @Column(name= "category_id")
     private int categoryId;
     @Column(name= "supplier_id")
     private int supplierId;
     private int purchases;
     private int views;
     
     //default Constructor
     public Product(){
    	 
    	  this.code = "PRD" + UUID.randomUUID().toString().substring(26).toUpperCase(); 
     }
     
     
     //setters and getters
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getUnitprice() {
		return unitprice;
	}
	public void setUnitprice(double unitprice) {
		this.unitprice = unitprice;
	}
	
	public boolean isActive() {
		return active;
	}
	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public void setActive(boolean active) {
		this.active = active;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public int getPurchases() {
		return purchases;
	}
	public void setPurchases(int purchases) {
		this.purchases = purchases;
	}
	public int getViews() {
		return views;
	}
	@Override
	public String toString() {
		return "Product [Id=" + Id + ", code=" + code + ", name=" + name + ", description=" + description
				+ ", unitprice=" + unitprice + ", quantity=" + quantity + ", active=" + active + ", categoryId="
				+ categoryId + ", supplierId=" + supplierId + ", purchases=" + purchases + ", views=" + views + "]";
	}


	public void setViews(int views) {
		this.views = views;
	}
     
     
     
     
     
     
     
     
     
     
     

	
}
