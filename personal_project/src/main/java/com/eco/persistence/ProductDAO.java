package com.eco.persistence;

import java.util.List;

import com.eco.domain.ProductVO;

public interface ProductDAO {
	
	//카테고리: 식료품만 출력(상품 타입 구분X)
	List<ProductVO> getGroceryList(ProductVO vo);

	//카테고리+타입: 생활용품만 출력(상품 타입 구분O)
	List<ProductVO> getGroceryListType(ProductVO vo);
	
	//카테고리: 식료품만 출력(상품 타입 구분X)
	List<ProductVO> getSupplyList(ProductVO vo);
	
	//카테고리+타입: 생활용품만 출력(상품 타입 구분O)
	List<ProductVO> getSupplyListType(ProductVO vo);

}
