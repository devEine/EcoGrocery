package com.eco.service;

import java.util.List;

import com.eco.domain.ProductVO;

public interface ProductService {

	public List<ProductVO> getGroceryList(ProductVO vo) throws Exception;

}
