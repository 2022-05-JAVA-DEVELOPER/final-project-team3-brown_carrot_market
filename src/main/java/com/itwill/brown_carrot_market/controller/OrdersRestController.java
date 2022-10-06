package com.itwill.brown_carrot_market.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.brown_carrot_market.dto.Orders;
import com.itwill.brown_carrot_market.service.OrdersService;

@RestController
public class OrdersRestController {
	@Autowired
	private OrdersService ordersService;
	
	@GetMapping("/orders_list_json")
	public Map orders_list_json(Orders orders) throws Exception{
		Map resultMap = new HashMap();
		int code=1;
		String url = "main";
		String msg = "";
		
		List<Orders> ordersList = ordersService.selectAllById("carrot8");
		
		resultMap.put("code", code);
		resultMap.put("url", url);
		resultMap.put("msg",msg);
		resultMap.put("data", ordersList);
		return resultMap;
	}
	
}
