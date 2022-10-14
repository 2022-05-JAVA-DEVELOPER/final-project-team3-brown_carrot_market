package com.itwill.brown_carrot_market.dao;

import java.util.List;

import com.itwill.brown_carrot_market.dto.Address;
import com.itwill.brown_carrot_market.dto.Product;

public interface SearchDao {
	public List<Product> selectListSearch(String search_keyword, Address address);
}