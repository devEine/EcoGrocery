package com.eco.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.eco.controller.HomeController;
import com.eco.domain.ProductVO;

@Repository
public class ProductDAOImpl implements ProductDAO{
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);

	//mapper 호출 위해 NAMESPACE 선언 
	private static final String NAMESPACE = "com.eco.mapper.ProductMapper";
	
	@Inject
	private SqlSession sqlSession;
	  
	  @Override
	public List<ProductVO> getGroceryList(ProductVO vo) {
		  log.info("ProductDAOImpl: getGroceryList(ProductVO vo)호출");
		  
		  Map<String, Object> groceryObj = new HashMap<String, Object>();
		  
		  groceryObj.put("category", vo.getCategory());
		  log.info("왜 Map에 안담기지?"+groceryObj);
		  
		  log.info("Map에 담은 category값 확인: "+groceryObj.get("category")+"");
		  
		  //select문 실행
		  List<ProductVO> groceryList = sqlSession.selectList(NAMESPACE+".getGroceryList",vo);
		  
		  return groceryList;
	}

}
