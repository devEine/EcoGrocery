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
	
	//카테고리: 식료품만 출력(상품 타입 구분X)
	@Override
		public List<ProductVO> getGroceryList(ProductVO vo) throws Exception {
			log.info("ProductServiceImpl: getGroceryList(ProductVO vo)호출");
			
			List<ProductVO> groceryList = dao.getGroceryList(vo);
			
			return groceryList;
		}
	
	//카테고리+타입: 식료품만 출력(상품 타입 구분O)
	@Override
	public List<ProductVO> getGroceryListType(ProductVO vo) throws Exception {
		log.info("ProductServiceImpl: getGroceryListType(ProductVO vo)호출");
		
		List<ProductVO> groceryListType = dao.getGroceryListType(vo);
		
		return groceryListType;
	}
	
	//카테고리: 생활용품만 출력(상품 타입 구분X)
	@Override
	public List<ProductVO> getSupplyList(ProductVO vo) throws Exception {
		log.info("ProductServiceImpl: getSupplyList(ProductVO vo)호출");
		
		List<ProductVO> supplyList = dao.getSupplyList(vo);
		
		return supplyList;
	}
	
	//카테고리+타입: 생활용품만 출력(상품 타입 구분O)
	@Override
	public List<ProductVO> getSupplyListType(ProductVO vo) throws Exception {
		log.info("ProductServiceImpl: getSupplyListType(ProductVO vo)호출");
		
		List<ProductVO> supplyListType = dao.getSupplyListType(vo);
		
		
		return supplyListType;
	}

}
