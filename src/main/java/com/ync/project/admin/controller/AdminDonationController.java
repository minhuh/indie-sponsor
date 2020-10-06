package com.ync.project.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ync.project.admin.service.ADonationService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.PageDTO;

import lombok.extern.log4j.Log4j;
/**
 * @FileName	: AdminDonationController.java
 * @Date		: 2019. 10. 23. 
 * @Author		: 석준영
 * @프로그램 설명 : admin 페이지 후원 controller
 */
@Controller
@Log4j
@RequestMapping("/admin/*")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class AdminDonationController {
	@Autowired
	private ADonationService dService;
	
	
	/**
	  * @Method 설명 : admin/member_donation.jsp 호출
	  * @Method Name : donation
	  * @Date : 2019. 10. 23.
	  * @작성자 : 석준영
	  * @return call jsp view
	  */
	@GetMapping(value = "/member_donation")
	public void donation(Criteria cri, Model model) {
		
		int total = dService.getTotal(cri);
		
		model.addAttribute("ADonation_list", dService.getListWithPagingAndContent(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	/**
	  * @Method 설명 : admin/member_donation_detail.jsp 호출
	  * @Method Name : donation
	  * @Date : 2019. 10. 23.
	  * @작성자 : 석준영
	  * @return call jsp view
	  */
	@GetMapping(value = "/member_donation_detail")
//	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public String donation_detail() {

		log.info("Welcome donation detail!");
	
		return "admin/member_donation_detail";
	}
	
}
