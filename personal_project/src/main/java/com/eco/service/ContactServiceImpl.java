package com.eco.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.eco.controller.HomeController;
import com.eco.domain.ContactVO;
import com.eco.domain.UserVO;
import com.eco.persistence.ContactDAO;

@Service
public class ContactServiceImpl implements ContactService{
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	private ContactDAO dao;
	
	//고객의 소리함 글쓰기(POST)
	@Override
	public void contactWritePost(ContactVO vo) {
		dao.contactWritePost(vo);
	}
	
	//고객의 소리함 게시글 목록(GET)
	@Override
	public List<ContactVO> contactBoardList(ContactVO vo) {
		return dao.contactBoardList(vo);
	}
}
