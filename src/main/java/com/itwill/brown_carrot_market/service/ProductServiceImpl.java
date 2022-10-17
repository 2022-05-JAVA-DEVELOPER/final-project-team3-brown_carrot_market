package com.itwill.brown_carrot_market.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.itwill.brown_carrot_market.dao.ProductDao;
import com.itwill.brown_carrot_market.dao.ProductImageDao;
import com.itwill.brown_carrot_market.dto.Address;
import com.itwill.brown_carrot_market.dto.Product;
import com.itwill.brown_carrot_market.dto.ProductImage;
import com.itwill.brown_carrot_market.dto.ReviewImage;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	@Qualifier("productDaoImpl")
	private ProductDao productDao;
	/**************채팅방*********************/
	@Autowired
	@Qualifier("productImageDaoImpl")
	private ProductImageDao productImageDao;
	/****************************************/
	public ProductServiceImpl() throws Exception{
		System.out.println("### productServiceImpl : 기본생성자 호출");
	}

	@Override
	public List<Product> selectProductAll() throws Exception {
		// TODO Auto-generated method stub
		return productDao.selectProductAll();
	}

	@Override
	public List<Product> selectAllByCtgr(int p_ctgr_no) throws Exception {
		// TODO Auto-generated method stub
		return productDao.selectAllByCtgr(p_ctgr_no);
	}

	@Override
	public List<Product> selectListByRange(Address address) throws Exception {
		// TODO Auto-generated method stub
		return productDao.selectListByRange(address);
	}

	@Override
	public List<Product> selectListByRangeCtgr(int p_ctgr_no, Address address) throws Exception {
		// TODO Auto-generated method stub
		return productDao.selectListByRangeCtgr(p_ctgr_no, address);
	}

	@Override
	public List<Product> selectByUserId(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return productDao.selectByUserId(user_id);
	}

	@Override
	public Product selectByOne(int p_no) throws Exception {
		// TODO Auto-generated method stub
		return productDao.selectByOne(p_no);
	}

	@Override
	public int deleteByPNo(int p_no) throws Exception {
		// TODO Auto-generated method stub
		return productDao.deleteByPNo(p_no);
	}

	@Override
	public int updateProduct(Map map) throws Exception {
		int result = 0;
		int p_no = Integer.parseInt((String) map.get("p_no"));
		int rowCount = productDao.updateProduct(map);
		
		List<String> imageList = new ArrayList<>();
		imageList = (List<String>) map.get("ImageNameList");

		if(imageList!=null) {
		for (int i=0; i < imageList.size(); i++) {
			String pi_name = imageList.get(i).toString();
			ProductImage productImage = new ProductImage();
			productImage.setP_no(p_no);
			productImage.setPi_name(pi_name);
			
			result = productImageDao.insertProductImg(productImage);
			
			}
			//System.out.println(imageList.get(2).toString());
		}
		
		
		return result;
	}

	@Override
	public int updateProductCount(int p_no) throws Exception {
		// TODO Auto-generated method stub
		return productDao.updateProductCount(p_no);
	}

	@Override
	public int insertProduct(Map map) throws Exception {
		int result = 0;
		int p_no = productDao.insertProduct(map);
		System.out.println(">>>>>Service map"+map);
		//List<String> fileNames = new ArrayList<>();
		System.out.println(">>>service map의 pi_name"+map.get("ImageNameList"));
		//System.out.println(map.size());
		
		
		//Product product = (Product) map;
		
		List<String> imageList = new ArrayList<>();
		imageList = (List<String>) map.get("ImageNameList");

		if(imageList!=null) {
		for (int i=0; i < imageList.size(); i++) {
			String pi_name = imageList.get(i).toString();
			ProductImage productImage = new ProductImage();
			productImage.setP_no(p_no);
			productImage.setPi_name(pi_name);
			
			result = productImageDao.insertProductImg(productImage);
			
			}
			//System.out.println(imageList.get(2).toString());
		}	
			/*
			List<ProductImage> productImageList = new ArrayList();
			((Product) productImageList).setP_no(p_no);
			((ProductImage) productImageList).setPi_name("pi_name");
			productImageList.add(productImage);
			}
		result = productImageDao.insertProductListImg(productImageList);
		}
		*/ 
		return result;
	}
	// 채팅에서 사용 
	@Override
	public List<ProductImage> selectProductImgList(int p_no) throws Exception{
		
		return productImageDao.selectProductImgList(p_no);
	}
	
	

	@Override
	public int updateProductSell(int p_sell, int p_no) throws Exception {
		// TODO Auto-generated method stub
		return productDao.updateProductSell(p_sell, p_no);
	}

	@Override
	public int deleteProductImg(int p_no) throws Exception {
		// TODO Auto-generated method stub
		return productImageDao.deleteProductImg(p_no);
	}
	
	
	
}
