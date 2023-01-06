package com.eco.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.eco.controller.HomeController;
import com.eco.domain.ContactVO;
import com.eco.domain.UserVO;

@Repository
public class ContactDAOImpl implements ContactDAO{
	//mapper 호출 위해 NAMESPACE 선언 
	private static final String NAMESPACE = "com.eco.mapper.ContactMapper";
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);

	
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
	//고객의 소리함 게시글 상세보기(GET)
	@Override
	public List<ContactVO> contactBoardContent(ContactVO vo) {
		List<ContactVO> contactBoardContent = sqlSession.selectList(NAMESPACE+".boardContent",vo);
		
		return contactBoardContent;
	}
	//고객의 소리함 게시글 수정(GET)
	@Override
	public List<ContactVO> boardUpdateGet(ContactVO vo) {
		List<ContactVO> boardUpdateGet = sqlSession.selectList(NAMESPACE+".boardUpdateGet",vo);

		return boardUpdateGet;
	}
	
	//고객의 소리함 게시글 수정(GET)
	@Override
	public List<ContactVO> boardUpdatePost(ContactVO vo) {
		log.info("dao number?"+vo.getContact_num());

		List<ContactVO> boardUpdatePost = sqlSession.selectList(NAMESPACE+".boardUpdatePost",vo);

		return boardUpdatePost;
	}
	//고객의 소리함 게시글 삭제(POST)
	@Override
	public void boardDelete(ContactVO vo) {
		
		sqlSession.delete(NAMESPACE+".boardDelete",vo);
	}
}
