package com.eco.controller;

import java.lang.ProcessHandle.Info;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.eco.domain.ProductVO;
import com.eco.service.ProductService;

@Controller
@RequestMapping(value = "/product")
public class ProductController {

	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	//서비스 객체 주입 
	@Inject
	private ProductService service;

	//식료품(GET)
	@RequestMapping(value = "/grocery", method = RequestMethod.GET)
	public String productGrocery(ProductVO vo, Model model) throws Exception {
		log.info("/product/grocery 호출");
		
		//service에서 식료품 상품 목록 가져오는 메서드 
		List<ProductVO> groceryList = service.getGroceryList(vo);
		log.info("식료품(grocery)상품 갯수: "+ groceryList.size());
		
		//식료품을 카테고리로 분류하기 위해 category변수명으로 변수를 view로 넘김
		model.addAttribute("category",vo.getCategory());
		
		//service 메서드로 출력되는 상품 리스트를 어트리뷰트에 담아서 view로 넘김 
		model.addAttribute("groceryList",groceryList);
		log.info("groceryList= "+groceryList);
		
		
		return "productGrocery";
	}
	
	//type나눈 식료품(GET)
	@RequestMapping(value = "/groceryType", method = RequestMethod.GET)
	public String productGroceryType(ProductVO vo, Model model) throws Exception {
		log.info("/product/groceryType 호출");
		
		//service에서 식료품 상품 목록 가져오는 메서드 
		List<ProductVO> groceryListType = service.getGroceryListType(vo);
		log.info("타입분류 식료품(grocery)상품 갯수: "+ groceryListType.size());
		
		//식료품을 카테고리+타입 으로 분류하기 위해 category변수명으로 변수를 view로 넘김
		model.addAttribute("category",vo.getCategory());
		model.addAttribute("prod_type",vo.getProd_type());
		
		//service 메서드로 출력되는 상품 리스트를 어트리뷰트에 담아서 view로 넘김
		model.addAttribute("groceryList",groceryListType);
		log.info("groceryList= "+groceryListType);
		
		
		return "productGrocery";
	}
	

	
	//생활용품(GET)
	@RequestMapping(value = "/supply", method = RequestMethod.GET)
	public String productSupply(ProductVO vo, Model model) throws Exception{
		log.info("/product/supply 호출");
		
		//service에서 생활용품 상품 목록 가져오는 메서드 
		List<ProductVO> supplyList = service.getSupplyList(vo);
		log.info("생활용품(suuply)상품 갯수: " + supplyList.size());
		
		//생활용품을 카테고리로 분류하기 위해 category변수명으로 변수를 view로 넘김
		model.addAttribute("category",vo.getCategory());
		
		//service 메서드로 출력되는 상품 리스트를 어트리뷰트에 담아서 view로 넘김
		model.addAttribute("supplyList",supplyList);
		log.info("supplyList= "+supplyList);

		
		return "productSupply";
	}
	
	//type나눈 생활용품(GET)
	@RequestMapping(value = "/supplyType", method = RequestMethod.GET)
	public String productSupplyType(ProductVO vo, Model model)throws Exception{
		log.info("/product/supplyType 호출");
		
		//service에서 타입 구분한 상품 목록 가져오는 메서드 
		List<ProductVO> supplyListType = service.getSupplyListType(vo);
		log.info("타입구분 생활용품(supply) 갯수: "+ supplyListType.size());
		
		//생활용품을 카테고리+타입으로 분류하기 위해 변수명으로 변수 view로 넘김
		model.addAttribute("category",vo.getCategory());
		model.addAttribute("prod_type",vo.getProd_type());
		log.info("prod_type 컨트롤러에서도 null일까?" + vo.getProd_type());
		
		//service메서드로 출력되는 상품 리스트를 어트리뷰트에 담아서 view로 넘김
		model.addAttribute("supplyList",supplyListType);
		log.info("supplyList= "+supplyListType);
		
		return "productSupply";
		
		
	}
}
