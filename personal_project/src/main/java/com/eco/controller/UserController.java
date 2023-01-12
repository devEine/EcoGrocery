package com.eco.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eco.domain.UserVO;
import com.eco.service.UserService;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);

	//서비스 객체 주입
	@Inject
	UserService service;

	// 회원가입(GET)
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegister() throws Exception {
		log.info("/user/register 실행");
		return "register";
	}

	// 회원가입(POST)
	@RequestMapping(value = "postRegister", method = RequestMethod.POST)
	public String postRegister(UserVO vo) throws Exception {
		service.register(vo);
		return "home";
	}

	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public String idCheck(UserVO vo) throws Exception {
		log.info("/user/idCheck 호출");

		String result = service.idCheck(vo) + "";
		return result;
	}

	// 전화번호 중복 체크
	@ResponseBody
	@RequestMapping(value = "/phoneCheck", method = RequestMethod.POST)
	public String phoneCheck(UserVO vo) throws Exception {
		log.info("/user/phoneCheck 호출");

		String result = service.phoneCheck(vo) + "";
		return result;
	}

}
