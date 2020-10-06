package com.ync.project.front.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.domain.ContentVO;
import com.ync.project.domain.Criteria;
import com.ync.project.front.service.ContentService;
import com.ync.project.util.UploadUtils;

import lombok.extern.log4j.Log4j;



 /**
  * @FileName	: FrontGameContentController.java
  * @Date		: 2019. 10. 28. 
  * @Author		: 허 민
  * @프로그램 설명 : front 게임 게시판 관련 Controller
  */
@Controller
@Log4j
public class FrontGameContentController {
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private ContentService service;

	 /**
	  * @Method 설명 : 게임 상세보기 front/game_content 호출
	  * @Method Name : gameContent
	  * @Date : 2019. 10. 28.
	  * @작성자 : 허 민
	  * @return
	  */
	@GetMapping(value = "/game_content")
	public String gameContent(HttpServletRequest request, Criteria cri, Model model) {

		String content_id = request.getParameter("content_id");
		
		log.info("gamecontent!");
		model.addAttribute("board", service.read(content_id));
		if(service.readHit(content_id) != 0) {
			log.info("success raise hit");
		}
		return "front/game_content";
	}

	
	/**
	  * @Method 설명 : 창작자 게임등록 폼[get] front/game_content_writeform 호출
	  * @Method Name : game_content_register
	  * @Date : 2019. 12. 12.
	  * @작성자 : 석준영
	  * @return 게임등록 양식
	  */
	@GetMapping("/game_content_writeform")
	@PreAuthorize("isAuthenticated()")
	public String game_content_register() { 
		log.info("등록 양식 가져오기........");
		return "front/game_content_writeform";
	}


	/**
	  * @Method 설명 :  창작자 게임등록 폼[post] front/game_content_writeform 호출
	  * @Method Name : game_content_register
	  * @Date : 2019. 12. 12.
	  * @작성자 : 석준영
	  * @return 
	  */
	@PostMapping("/game_content_writeform")
	@PreAuthorize("isAuthenticated()")
	public String game_content_register(MultipartFile[] uploadFile, ContentVO content, RedirectAttributes rttr) {
		log.warn("글등록하기......");
		int index = 0;
		for (MultipartFile multipartFile : uploadFile) {
			// 실제로 upload된 file이 있을때만 upload 시킨다. 
			if (multipartFile.getSize() > 0) {
				switch (index) {
				case 0:
					content.setMedia2(UploadUtils.uploadFormPost(multipartFile,uploadPath));
					break;
				case 1:
					content.setMedia3(UploadUtils.uploadFormPost(multipartFile,uploadPath));
					break;
				default:
					content.setMedia4(UploadUtils.uploadFormPost(multipartFile,uploadPath));
					break;
				}
				//list.add(UploadUtils.uploadFormPost(multipartFile));
				index++;
			}
		}
		service.register(content);
		rttr.addFlashAttribute("result", content.getContent_id());
		
		return "redirect:/";
	}

	 /**
	  * @Method 설명 : 게임 소개 front/game_intro 호출
	  * @Method Name : gameIntro
	  * @Date : 2019. 10. 28.
	  * @작성자 : 허 민
	  * @return
	  */
	@GetMapping(value = "/game_intro")
	public void gameIntro() {

		log.info("gameintro!");

	}
	
	

	
}
