package com.eco.persistence;

import java.util.List;

import com.eco.domain.ContactVO;
import com.eco.domain.UserVO;

public interface ContactDAO {
	
	//고객의 소리함 글쓰기(POST)
	public void contactWritePost(ContactVO vo);
	
	//고객의 소리함 게시글 목록(GET)
	public List<ContactVO> contactBoardList(ContactVO vo);
	
	//고객의 소리함 게시글 상세보기(GET)
	public List<ContactVO> contactBoardContent(ContactVO vo);
	
	//고객의 소리함 게시글 수정(GET)
	public List<ContactVO> boardUpdateGet(ContactVO vo);
	
	//고객의 소리함 게시글 수정(POST)
	public List<ContactVO> boardUpdatePost(ContactVO vo);
	
	//고객의 소리함 게시글 삭제(POST)
	public void boardDelete(ContactVO vo);

}
