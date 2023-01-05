package com.eco.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.eco.domain.ContactVO;
import com.eco.domain.UserVO;
import com.eco.service.ContactService;

@Controller
@RequestMapping(value = "/contact")
public class ContactController {
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	private ContactService service;
	
	//고객의 소리함 글쓰기(GET)
	@RequestMapping(value = "/writeGet", method = RequestMethod.GET)
	public String contactWriteGet() {
		log.info("/contact/writeGet 호출");
		
		return "contact";
	}
	
	//고객의 소리함 글쓰기(POST)
	@RequestMapping(value = "/writePost", method = RequestMethod.POST)
	public String contactWritePost(HttpSession session,HttpServletResponse response,ContactVO vo, Model model) throws Exception{
		log.info("/contact/writePost 호출");
		//1. 로그인 상태일때만 글쓰기 가능 => 헤더 contact 링크에서 조건문 걸기 

			service.contactWritePost(vo);
			log.info("vo 찍어보자: "+vo);
			
			model.addAttribute("contact_date", vo.getContact_date());
			
			return "redirect:/contact/boardList";
			
	}
	
	//고객의 소리함 게시글 목록(GET)
	@RequestMapping(value = "/boardList", method = RequestMethod.GET)
	public String contactBoardList(ContactVO vo,Model model) {
		log.info("contact/boardList 호출");
		
		List<ContactVO> contactList =  service.contactBoardList(vo);
		
		model.addAttribute("contactList", contactList);
		
		return "contactBoard";
	}

}
