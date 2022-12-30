package com.eco.persistence;

import java.util.List;

import com.eco.domain.ProductVO;

public interface ProductDAO {

	List<ProductVO> getGroceryList(ProductVO vo);

}
