package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.PageDTO;
import com.ync.project.front.service.NoticeService;

import lombok.extern.log4j.Log4j;

/**
  * @FileName	: FrontNoticeController.java
  * @Date		: 2019. 10. 21. 
  * @Author		: 김길재
  * @프로그램 설명 :
  */
@Controller
@Log4j
@RequestMapping("/*")
public class FrontNoticeController {
	@Autowired
	private NoticeService service;
	
	 /**
	  * @Method 설명 :
	  * @Method Name : notice_list
	  * @Date : 2019. 10. 28.
	  * @작성자 : 석준영
	  * @return 공지사항 컨트롤러 생성
	  */
	@GetMapping("/notice")
	public String notice_list(Criteria cri, Model model) {
		int total = service.getTotal(cri);
		
		log.info("list:11111 " + cri);
		log.info("total:1111 " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));

		return "front/notice";
	}
}