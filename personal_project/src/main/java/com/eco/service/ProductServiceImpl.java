package com.eco.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.eco.controller.HomeController;
import com.eco.domain.ProductVO;
import com.eco.persistence.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService{
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	//dao 객체 주입 
	@Inject
	private ProductDAO dao;
	
@Override
	public List<ProductVO> getGroceryList(ProductVO vo) throws Exception {
		log.info("ProductServiceImpl: getGroceryList(ProductVO vo)호출");
		
		List<ProductVO> groceryList = dao.getGroceryList(vo);
		
		return groceryList;
	}

}
