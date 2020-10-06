package com.ync.project.front.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: CommonController.java
  * @Date		: 2019. 12. 12. 
  * @Author		: 석준영
  * @프로그램 설명 : 로그인 관련 컨트롤러 파일 및 기능 생성
  */
@Controller
@Log4j
public class CommonController {
	
	//로그인 실패시 작동
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		
		log.info("access Denied : " + auth + model);

		model.addAttribute("msg", "Access Denied");
	}

	//에러와 로그아웃이 없을 시 로그인 성공
	@GetMapping("/login")
	public String loginInput(String error, String logout, Model model, HttpServletRequest request) {

		log.info("error : " + error);
		log.info("logout : " + logout);
		
		if (error != null) {
			model.addAttribute("error", "Login Error Check Your Account");
		}

		if (logout != null) {
			model.addAttribute("logout", "Logout!!");
		}
		
		String referer = request.getHeader("Referer");
	    request.getSession().setAttribute("prevPage", referer);
		
		return "/front/login";
	}

	//로그아웃 버튼을 누를 시 작동 [로그아웃 페이지]
	@GetMapping("/logout")
	public String logoutGET() {
		log.info("custom logout");
		return "/front/logout";
	}
	
	//로그아웃 버튼을 누를 시 작동 [로그아웃 기능작동]
	@PostMapping("/logout")
	public String logoutPost() {

		log.info("post custom logout");
		return "redirect:/";
	}

}
