package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ync.project.domain.BookmarkVO;
import com.ync.project.domain.ContentVO;
import com.ync.project.domain.Criteria2;
import com.ync.project.domain.FundVO;
import com.ync.project.front.service.BookmarkService;
import com.ync.project.front.service.FundingService;

import lombok.extern.log4j.Log4j;




/**
  * @FileName	: FrontFundController.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 김길재, 허 민
  * @프로그램 설명 : front 펀딩 페이지 controller
  */
@Controller
@Log4j
public class FrontFundController {
	@Autowired
	private FundingService service;
	@Autowired
	private BookmarkService bService;
	/**
	  * @Method 설명 : 펀딩 메인 페이지 front/funding_main 호출
	  * @Method Name : funding_main
	  * @Date : 2019. 11. 27.
	  * @작성자 : 석준영, 허 민
	  * @return
	  */
	@GetMapping("/fund_main")
	public String fundMain(Criteria2 cri2, Model model) {

					
			log.info("list: " + cri2);
			model.addAttribute("list", service.getListWithPaging());
//			int total = service.getTotal(cri2);
//			
//			log.info("total: " + total);
			
//			model.addAttribute("pageMaker", new com.ync.project.domain.PageDTO2(cri2, total));
			log.info("funding!");
			
			return "front/funding_main";
		}
	
	/**
	  * @Method 설명 : 종료된 펀딩 페이지 front/funding_end 호출
	  * @Method Name : fund_end
	  * @Date : 2019. 11. 27.
	  * @작성자 : 김길재, 허 민
	  * @return
	  */
	@GetMapping(value = "/fund_end")
	public String fundEnd(Criteria2 cri2, Model model) {
		
		model.addAttribute("list", service.getListEndFund());
		
		log.info("End Fund!");
	
		return "front/funding_ended";
	}
	
	 /**
	  * @Method 설명 : 진행중인 펀딩 상세 front/fundnow 호출
	  * @Method Name : funding_ing
	  * @Date : 2019. 11. 27.
	  * @작성자 : 허 민
	  * @return
	  */
	@GetMapping(value = {"/fund_now", "/update", "/bmkInsert", "/bmkDelete"})
	public String fundnow(@RequestParam("content_id") Long content_id, String userid, Model model) {
		model.addAttribute("fundnow", service.read(content_id));
		model.addAttribute("bmkcheck", bService.bmkRead(content_id));
		log.info("End Fund!");
	
		return "front/funding_ing";
	}
	
	@PostMapping(value = "/fund_now")
	public String fundgo(@RequestParam("content_id") Long content_id, FundVO fund) {

		service.insert(fund);
//		log.info("insert: " + fund);
	
		return "redirect:/fund_now?content_id=" + content_id;

	}
	 
	@PostMapping(value = "/update")
	public void fundgo2(ContentVO content) throws Exception {

		service.modify(content);
		
		log.info("modify: " + content);
	}
	
	@PostMapping(value = "/bmkInsert")
	public String bmkInsert(@RequestParam("content_id") Long content_id, BookmarkVO bmk) {

		bService.bmkInsert(bmk);
		
		log.info("modify: " + bmk);
		
		return "redirect:/fund_now?content_id=" + content_id;
	}
	
	@PostMapping(value = "/bmkDelete")
	public String bmkDelete(@RequestParam("content_id") Long content_id) {

		bService.bmkDelete(content_id);
		
		log.info("modify: " + content_id);
		
		return "redirect:/fund_now?content_id=" + content_id;
	}
	
}
