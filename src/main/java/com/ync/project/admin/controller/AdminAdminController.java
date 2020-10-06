package com.ync.project.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.admin.service.AMemberService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;
import com.ync.project.domain.PageDTO;

import lombok.extern.log4j.Log4j;

/**
  * @FileName	: AdminAdminController.java
  * @Date		: 2019. 10. 27. 
  * @Author		: 김길재
  * @프로그램 설명 : Admin 관리자 관리 Controller
  */
@Controller
@Log4j
@RequestMapping("/admin/*")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class AdminAdminController {
	
	@Autowired
	private AMemberService mService;

	 /**
	  * @Method 설명 : 관리자 등록 admin_create.jsp 호출
	  * @Method Name : admin_create
	  * @Date : 2019. 10. 27.
	  * @작성자 : 김길재
	  * @return
	  */
	@GetMapping(value = "/admin_create")
	public String admin_create() {

		log.info("Welcome Admin Create");
	
		return "admin/admin_create";
	}
	
	 /**
	  * @Method 설명 : 관리자 등록 데이터 보냄
	  * @Method Name : admin_register
	  * @Date : 2019. 12. 6.
	  * @작성자 : 김길재
	  * @param admin_member
	  * @param rttr
	  * @return
	  */
	@PostMapping("/admin_create")
	@PreAuthorize("isAuthenticated()")
	public String admin_register(MemberVO admin_member, RedirectAttributes rttr) {
		BCryptPasswordEncoder scpwd = new BCryptPasswordEncoder();
		admin_member.setUserpw(scpwd.encode(admin_member.getUserpw()));
		mService.admin_register(admin_member);
		rttr.addFlashAttribute("result", admin_member.getUserid());
		return "redirect:/";
	}
	
	 /**
	  * @Method 설명 : 관리자 조회 admin_management.jsp 호출
	  * @Method Name : admin_management
	  * @Date : 2019. 10. 27.
	  * @작성자 : 김길재
	  * @return
	  */
	@GetMapping(value = "/admin_management")
	public void getAdminManagement(Criteria cri, Model model) {
		
		int total = mService.getTotal(cri);
		
		model.addAttribute("list", mService.getAdminListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total)); 
		
	}

	@PostMapping(value = "/admin_management")
	public String postAdminManagement(@RequestParam("userid") String user_id) {
		
		mService.revoke(user_id);
		
		return "redirect:/admin/admin_management";
				
		
	}
	


	 /**
	  * @Method 설명 : 관리자 권한 수정 admin_modify.jsp 호출
	  * @Method Name : admin_modify
	  * @Date : 2019. 10. 28.
	  * @작성자 : 김길재
	  * @return
	  */
	@GetMapping(value = "/admin_modify")
	public void getAdminModify(HttpServletRequest request, Model model, Criteria cri) {

		String userid = request.getParameter("userid");
		
		model.addAttribute("admin_info", mService.get(userid));
	
		
	}
//	@PostMapping(value = "/admin_modify")
//	public String postAdminModify() {
//
//		
//	
//		return "admin/admin_modify";
//	}
}
