package com.eco.service;

import java.util.List;

import com.eco.domain.ContactVO;
import com.eco.domain.UserVO;

public interface ContactService {
	
	//고객의 소리함 글쓰기(POST)
	public void contactWritePost(ContactVO vo);
	
	//고객의 소리함 게시글 목록(GET)
	public List<ContactVO> contactBoardList(ContactVO vo);
}	
