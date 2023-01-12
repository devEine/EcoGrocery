package com.eco.service;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.eco.controller.HomeController;
import com.eco.domain.UserVO;
import com.eco.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService{
	
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	//dao 객체 주입 
	@Inject
	private UserDAO dao;
	
	
	
	
	//회원가입
	@Override
	public void register(UserVO vo) throws Exception {
		dao.register(vo);
	}
	

	//아이디 중복체크
	public int idCheck(UserVO vo) throws Exception{
		return dao.idCheck(vo);
	};
	
	
	//휴대번호 중복체크
	public int phoneCheck(UserVO vo) throws Exception{
		return dao.phoneCheck(vo);
	};
}
