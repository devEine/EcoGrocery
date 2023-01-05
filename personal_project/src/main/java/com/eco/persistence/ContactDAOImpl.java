package com.eco.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.eco.domain.ContactVO;
import com.eco.domain.UserVO;

@Repository
public class ContactDAOImpl implements ContactDAO{
	//mapper 호출 위해 NAMESPACE 선언 
	private static final String NAMESPACE = "com.eco.mapper.ContactMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	//고객의 소리함 글쓰기(POST)
	@Override
	public void contactWritePost(ContactVO vo) {
		sqlSession.insert(NAMESPACE+".writePost", vo);
	}
	
	//고객의 소리함 게시글 목록(GET)
	@Override
	public List<ContactVO> contactBoardList(ContactVO vo) {
		List<ContactVO> contactBoardList = sqlSession.selectList(NAMESPACE+".boardList",vo);
		
		return contactBoardList;
	}
}
