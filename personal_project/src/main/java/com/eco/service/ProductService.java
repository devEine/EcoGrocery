package com.eco.service;

import java.util.List;

import com.eco.domain.ProductVO;

public interface ProductService {
	
	//카테고리: 식료품만 출력(상품 타입 구분X)
	public List<ProductVO> getGroceryList(ProductVO vo) throws Exception;
	
	//카테고리+타입: 식료품만 출력(상품 타입 구분O)
	public List<ProductVO> getGroceryListType(ProductVO vo) throws Exception;
	
	//카테고리: 생활용품만 출력(상품 타입 구분X)
	public List<ProductVO> getSupplyList(ProductVO vo) throws Exception;
	
	//카테고리+타입: 생활용품만 출력(상품 타입 구분O)
	public List<ProductVO> getSupplyListType(ProductVO vo) throws Exception;

}
