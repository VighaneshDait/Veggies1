package com.vighanesh.veggiesbackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vighanesh.veggiesbackend.dao.ProductDAO;
import com.vighanesh.veggiesbackend.dto.Product;
import com.vighanesh.veggiesbackend.dto.Category;

@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	/*
	 * SINGLE
	 */
    @Override
	public Product get(int productId)
	{
		try{
			  return sessionFactory.getCurrentSession().get(Product.class,Integer.valueOf(productId));
			
		}catch(Exception ex){
			
			ex.printStackTrace();
		}
		
		return null;
		
	}
	
	/*
	 * List
	 */
	
    @Override
    public List<Product> list(){	
    	String selectAllProducts="FROM Product";
		Query query = sessionFactory.getCurrentSession().createQuery(selectAllProducts,Product.class);
		return query.getResultList();
	
               
    }
    
    /*
     * INSERT
     */
    
    @Override
    public boolean add(Product product)
    {
       try{
    	   sessionFactory.getCurrentSession().persist(product);;
    	   return true;
    	   
       }catch(Exception ex){
    	   
    	   ex.printStackTrace();
       }	
    	return false;
    }
    
    /*
     * Update
     */
    @Override
    public boolean update(Product product)
    {
    	try{
    		sessionFactory.getCurrentSession().update(product);;
    		return true;
    		
    	}catch(Exception ex)
    	{
    		ex.printStackTrace();
    	}
    return false;
    }
    
  /*
   * Delete  
   */
    @Override
    public boolean delete(Product product)
    {
    	product.setActive(false);
    	try{
    		sessionFactory.getCurrentSession().update(product);;
    		return true;
    	}catch(Exception ex){
    		
    		ex.printStackTrace();
    	}
    	return false;
    }
    
    @Override
    public List<Product> listActiveProducts(){
    	String selectActiveProducts = "FROM Product WHERE active = :active";
    	Query query = sessionFactory.getCurrentSession().createQuery(selectActiveProducts);
		query.setParameter("active", true);
		return query.getResultList();
    }
    
    @Override
    public List<Product> listActiveProductsByCategory(int categoryId){
       	String selectActiveProductsByCategory = "FROM Product WHERE active = :active AND categoryId= :categoryId";
       	Query query = sessionFactory.getCurrentSession().createQuery(selectActiveProductsByCategory);
		query.setParameter("active", true);
		query.setParameter("categoryId",categoryId);
		return query.getResultList();	
    }

    @Override
    public List<Product> getLatestActiveProducts(int count){
    	return sessionFactory
    			.getCurrentSession()
    			.createQuery("FROM Product WHERE active = :active ORDER BY id", Product.class)
    			.setParameter("active", true)
    			.setFirstResult(0)
    			.setMaxResults(count)
    			.getResultList();
    }




}
