package com.eco.controller;

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

	//식료품
	@RequestMapping(value = "/grocery", method = RequestMethod.GET)
	public String productGrocery(ProductVO vo, Model model) throws Exception {
		log.info("/product/grocery 호출");
		
		//service에서 식료품 상품 목록 가져오는 메서드 
		List<ProductVO> groceryList = service.getGroceryList(vo);
		log.info("식료품(grocery)상품 갯수: "+ groceryList.size());
		
		//식료품을 카테고리로 분류하기 위해 category변수명으로 변수를 view로 넘김
		model.addAttribute("category",vo.getCategory());
		model.addAttribute("type",vo.getType());
		
		//service 메서드로 출력되는 상품 리스트를 어트리뷰트에 담아서 view로 넘김
		model.addAttribute("groceryList",groceryList);
		log.info("groceryList= "+groceryList);
		
		
		return "productGrocery";
	}

	
	//생활용품
	@RequestMapping(value = "/supply", method = RequestMethod.GET)
	public String productSupply(ProductVO vo, Model model) throws Exception{
		
		return "productSupply";
	}
}
