package com.eco.service;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.eco.controller.HomeController;
import com.eco.domain.UserVO;
import com.eco.persistence.UserDAO;

public interface UserService {

	//회원가입
	public void register(UserVO vo) throws Exception;
	

	//아이디 중복체크
	public int idCheck(UserVO vo) throws Exception;
	
	
	//휴대번호 중복체크
	public int phoneCheck(UserVO vo) throws Exception;
}
