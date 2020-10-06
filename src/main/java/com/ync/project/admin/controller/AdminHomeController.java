package com.ync.project.admin.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

/**
  * @FileName	: AdminHomeController.java
  * @Date		: 2019. 10. 26. 
  * @Author		: 김길재
  * @프로그램 설명 : 메인 페이지 호출용 controller
  */
@Controller
@Log4j
@RequestMapping("/admin/*")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class AdminHomeController {
	
	@GetMapping(value = "/*")
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public String home() {

		log.info("Welcome Admin home!");
	
		return "admin/admin_main";
	}

}
