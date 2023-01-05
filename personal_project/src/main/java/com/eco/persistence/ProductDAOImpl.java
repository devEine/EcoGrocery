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
	  
	//카테고리: 식료품만 출력(상품 타입 구분X)
	  @Override
	public List<ProductVO> getGroceryList(ProductVO vo) {
		  log.info("ProductDAOImpl: getGroceryList(ProductVO vo)호출");
		  
		  Map<String, Object> groceryObj = new HashMap<String, Object>();
		  
		  groceryObj.put("category", vo.getCategory());
		  
		  log.info("Map에 담은 category값 확인: "+groceryObj.get("category")+"");
		  
		  
		  //select문 실행
		  List<ProductVO> groceryList = sqlSession.selectList(NAMESPACE+".getGroceryList",vo);
		  
		  return groceryList;
	}
	  
	//카테고리+타입: 식료품만 출력(상품 타입 구분O) 
	  @Override
	public List<ProductVO> getGroceryListType(ProductVO vo) {
		  log.info("ProductDAOImpl: getGroceryListType(ProductVO vo)호출");
		  
		  Map<String, Object> groceryTypeObj = new HashMap<String, Object>();
		  
		  groceryTypeObj.put("category", vo.getCategory());
		  groceryTypeObj.put("prod_type", vo.getProd_type());
		  
		  log.info("Map에 담은 category값 확인: "+groceryTypeObj.get("category")+"");
		  log.info("Map에 담은 prod_type값 확인: "+groceryTypeObj.get("prod_type")+"");
		  
		  //select문 실행
		  List<ProductVO> groceryListType = sqlSession.selectList(NAMESPACE+".getGroceryListType",vo);

		  return groceryListType;
	}
	  
	  //카테고리: 생활용품만 출력(상품 타입 구분X)
	  @Override
	  public List<ProductVO> getSupplyList(ProductVO vo) {
		  log.info("ProductDAOImpl: getSupplyList(ProductVO vo)호출");
		  
		  Map<String, Object> supplyObj = new HashMap<String, Object>();
		  
		  supplyObj.put("category", vo.getCategory());
		  
		  log.info("Map에 담은 category값 확인: "+supplyObj.get("category")+"");
		  
		  
		  //select문 실행
		  List<ProductVO> supplyList = sqlSession.selectList(NAMESPACE+".getSupplyList",vo);
		  
		  return supplyList;
	  }
	  
	  //카테고리+타입: 생활용품만 출력(상품 타입 구분O) 
	  @Override
	  public List<ProductVO> getSupplyListType(ProductVO vo) {
		  log.info("ProductDAOImpl: getSupplyListType(ProductVO vo)호출");
		  
		  Map<String, Object> supplyTypeObj = new HashMap<String, Object>();
		  
		  supplyTypeObj.put("category", vo.getCategory());
		  supplyTypeObj.put("prod_type", vo.getProd_type());
		  
		  log.info("Map에 담은 category값 확인: "+supplyTypeObj.get("category")+"");
		  log.info("Map에 담은 prod_type값 확인: "+supplyTypeObj.get("prod_type")+"");
		  
		  //select문 실행
		  List<ProductVO> supplyListType = sqlSession.selectList(NAMESPACE+".getSupplyListType",vo);
		  
		  return supplyListType;
	  }

}
