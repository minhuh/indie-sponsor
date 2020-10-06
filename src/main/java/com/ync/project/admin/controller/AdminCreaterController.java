package com.ync.project.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ync.project.admin.service.AMemberService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.PageDTO;

import lombok.extern.log4j.Log4j;

/**
 * @FileName	: AdmincreaterController.java
 * @Date		: 2019. 10. 23. 
 * @Author		: 석준영
 * @프로그램 설명 : admin 창작자 관리 controller
 */
@Controller
@Log4j
@RequestMapping("/admin/*")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class AdminCreaterController {
	
	@Autowired
	private AMemberService mService;
	 /**
	  * @Method 설명 : 창작자 권한 수정 admin_generate_creater.jsp 호출
	  * @Method Name : createrGenerate
	  * @Date : 2019. 10. 26.
	  * @작성자 : 석준영
	  * @return
	  */
	@GetMapping(value = "/creater_modify")
	public void creater_modify( HttpServletRequest request, Model model, Criteria cri) {

		String userid = request.getParameter("userid");
		
		log.info("Welcome Info detail!");
		
		model.addAttribute("member_info", mService.get(userid));
		model.addAttribute("givedon", mService.getGiveDonation(cri));
		model.addAttribute("getdon", mService.getGetDonationToUser(userid));

	}
	
	 /**
	  * @Method 설명 : 창작자 권한 강등
	  * @Method Name : creater_modifying
	  * @Date : 2019. 12. 10.
	  * @작성자 : 김길재
	  * @param userid
	  * @param request
	  * @param model
	  * @param cri
	  * @return
	  */
	@GetMapping(value = "/creater_modifying")
	public String creater_modifying(@RequestParam("userid") String userid, HttpServletRequest request) {

		
		log.info("Welcome Info detail!");
		
		mService.creater_modify(userid);
		
		return "redirect:/admin/creater_info";
	}
	
	 /**
	  * @Method 설명 : 창작자 휴면 전환
	  * @Method Name : creater_status
	  * @Date : 2019. 12. 10.
	  * @작성자 : 김길재
	  * @param userid
	  * @param request
	  * @param model
	  * @param cri
	  * @return
	  */
	@GetMapping(value = "/creater_status")
	public String creater_status(@RequestParam("userid") String userid, HttpServletRequest request) {

		
		log.info("Welcome Info detail!");
		
		mService.creater_status(userid);
		
		return "redirect:/admin/creater_info";
	}
	
	
	 /**
	  * @Method 설명 : 창작자 조회 creater_list.jsp 호출
	  * @Method Name : grademod
	  * @Date : 2019. 10. 24.
	  * @작성자 : 김길재
	  * @return
	  */
	@GetMapping(value = "/creater_info")
	public void creater_info(Criteria cri, Model model) {
		int total = mService.getTotalCreater(cri);
		
		log.info("list:11111 " + cri);
		log.info("total:1111 " + total);
//		model.addAttribute("list", service.getList());
		
		model.addAttribute("list", mService.getListWithPagingWithCreater(cri));
		model.addAttribute("list_getdon", mService.getGetDonation(cri));
		model.addAttribute("list_givedon", mService.getGiveDonation(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	@GetMapping(value = "/creater_request")
	public void creater_request(Criteria cri, Model model) {
		int total = mService.getTotalCreater(cri);
		
		log.info("list:11111 " + cri);
		log.info("total:1111 " + total);
//		model.addAttribute("list", service.getList());
		
		model.addAttribute("list", mService.getListWithPagingWithCreater_request(cri));
		model.addAttribute("list_getdon", mService.getGetDonation(cri));
		model.addAttribute("list_givedon", mService.getGiveDonation(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	 /**
	  * @Method 설명 : 창작자 신청 관리자 승인
	  * @Method Name : creater_accept
	  * @Date : 2019. 12. 12.
	  * @작성자 : 김길재
	  * @param userid
	  * @param request
	  * @return
	  */
	@GetMapping(value = "/creater_accept")
	public String creater_accept(@RequestParam("userid") String userid, HttpServletRequest request) {		
		log.info("Welcome Info detail!");
		
		mService.creater_accept(userid);
		
		return "redirect:/admin/creater_request";
	}
	
	 /**
	  * @Method 설명 : 창작자 신청 관리자 거부
	  * @Method Name : creater_cancle
	  * @Date : 2019. 12. 12.
	  * @작성자 : 김길재
	  * @param userid
	  * @param request
	  * @return
	  */
	@GetMapping(value = "/creater_cancle")
	public String creater_cancle(@RequestParam("userid") String userid, HttpServletRequest request) {		
		log.info("Welcome Info detail!");
		
		mService.creater_cancle(userid);
		
		return "redirect:/admin/creater_request";
	}
}
