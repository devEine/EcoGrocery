package com.eco.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.eco.controller.HomeController;
import com.eco.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	private static final String NAMESPACE = "com.eco.mapper.UserMapper";

	private static final Logger log = LoggerFactory.getLogger(HomeController.class);

	@Inject
	private SqlSession sqlSession;

	// 회원가입
	@Override
	  public void register(UserVO vo) throws Exception{
		  sqlSession.insert(NAMESPACE+".register",vo);
	}
	
	//아이디 중복체크
	@Override
	public int idCheck(UserVO vo) throws Exception {
		return sqlSession.selectOne(NAMESPACE+".idCheck", vo);
	}
	
	//휴대번호 중복체크
	@Override
	public int phoneCheck(UserVO vo) throws Exception {
		return sqlSession.selectOne(NAMESPACE+".phoneCheck", vo);
	}
}
