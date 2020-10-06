package com.ync.project.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ync.project.admin.service.AContentService;
import com.ync.project.admin.service.ADonationService;
import com.ync.project.admin.service.AMemberService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.PageDTO;

import lombok.extern.log4j.Log4j;


 /**
  * @FileName	: AdminInfoController.java
  * @Date		: 2019. 10. 23. 
  * @Author		: 허 민
  * @프로그램 설명 : admin 회원관리 페이지 controller (리스트, 상세보기)
  */
@Controller
@Log4j
@RequestMapping("/admin/*")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class AdminMemberController {

	@Autowired
	private AMemberService mService;
	
	@Autowired
	private ADonationService dService;
	
	@Autowired
	private AContentService cService;

	 /**
	  * @Method 설명 : 회원관리 리스트 admin/member_info.jsp 호출
	  * @Method Name : member_info
	  * @Date : 2019. 10. 23.
	  * @작성자 : 허 민
	  * @return
	  */
	@GetMapping(value = "/member_info")
//	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public void member_info(Criteria cri, Model model) {
		
		int total = mService.getTotal(cri);
		
		log.info("list:11111 " + cri);
		log.info("total:1111 " + total);
//		model.addAttribute("list", mService.getList());
		
		model.addAttribute("list", mService.getListWithPaging(cri));
		model.addAttribute("list_getdon", mService.getGetDonation(cri));
		model.addAttribute("list_givedon", mService.getGiveDonation(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}

	@GetMapping(value = "/member_info_detail")
//	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public void member_info_detail(HttpServletRequest request, Model model, Criteria cri) {

		String userid = request.getParameter("userid");
		
		log.info("Welcome Info detail!");
		
		model.addAttribute("member_info", mService.get(userid));
		model.addAttribute("givedon", mService.getGiveDonation(cri));
		model.addAttribute("getdon", mService.getGetDonation(cri));
		model.addAttribute("donation", mService.get(userid));
	}

	@GetMapping(value = "/member_stats_all")
	public void stats_all(Criteria cri, Model model) {

		int cTotal = cService.getTotal(cri);				// 컨텐츠 총 갯수
		int mTotal = mService.getTotal(cri);				// 멤버총 인원수 
		
		int cntCreater = mService.getTotalCreater(cri);		// 창작자 총 인원수
		int cntActiveUser = mService.getActiveUser(cri);	// 현재 활동중인 인원수
		int totalDon = dService.getTotalDonation();			// 후원된 총 금액
		
		log.info("Welcome Member Stats All!...");
		
		model.addAttribute("cTotal", cTotal);				//
		model.addAttribute("mTotal", mTotal);				//
		model.addAttribute("cntCreater", cntCreater);		//
		model.addAttribute("cntActiveUser", cntActiveUser);	//
		model.addAttribute("totalDon", totalDon);			//
		model.addAttribute("cGD", dService.creatersGetDonation());
	}
}
