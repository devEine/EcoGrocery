package com.eco.persistence;

import com.eco.domain.UserVO;

public interface UserDAO {
	
	//회원가입
	public void register(UserVO vo) throws Exception;
	

	//아이디 중복체크
	public int idCheck(UserVO vo) throws Exception;
	
	
	//휴대번호 중복체크
	public int phoneCheck(UserVO vo) throws Exception;

}
