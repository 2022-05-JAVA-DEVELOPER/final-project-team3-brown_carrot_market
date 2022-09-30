package com.itwill.brown_carrot_market.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.brown_carrot_market.dto.Product;
import com.itwill.brown_carrot_market.mapper.ProductMapper;

@Repository(value = "productDaoImpl")
public class ProductDaoImpl implements ProductDao{
	
	@Autowired(required = true)
	private ProductMapper productMapper;
	
	public ProductDaoImpl() {
		System.out.println("### ProductDaoImpl() : 디폴트생성자 호출");
	}
	
	public ProductMapper getProductMapper() {
		return productMapper;
	}
	
	public void setProductMapper(ProductMapper productMapper) {
		System.out.println("### ProductDaoImpl() : setProductMapper() 메소드 호출");
		this.productMapper = productMapper;
	}
	

	@Override
	public List<Product> selectProductAll() throws Exception{
		System.out.println("### ProductDaoImpl : selectProductAll 호출");
		
		return productMapper.selectProductAll();
	}
}
