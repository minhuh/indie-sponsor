package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;
import com.ync.project.domain.PageDTO;
import com.ync.project.front.service.MemberService;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: FrontMemberController.java
  * @Date		: 2019. 10. 28. 
  * @Author		: 허 민
  * @프로그램 설명 : front 멤버 등록 및 로그인 controller
  */
@Controller
@Log4j
@RequestMapping("/*")
public class FrontMemberController {


	 /**
	  * @Method 설명 : 회원가입 front/join 호출
	  * @Method Name : join
	  * @Date : 2019. 10. 28.
	  * @작성자 : 허 민
	  * @return
	  */
	
	@Autowired
	private MemberService service;
	
	@GetMapping("/join")
	public String join() {

		log.info("join!");
		
		return "/front/join";
	}
	
	@PostMapping("/join")
	public String join(MemberVO member) {
		log.warn("회원가입하기......");
		BCryptPasswordEncoder scpwd = new BCryptPasswordEncoder();
		member.setUserpw(scpwd.encode(member.getUserpw()));
		log.warn(member.getName());
		log.warn(member.getBirth());
		log.warn(member.getUserid());
		log.warn(member.getUserpw());
		log.warn(member.getPhone());
		
		service.join(member);
//		rttr.addFlashAttribute("result", content.getContent_id());
		return "redirect:/";
	}
	
	 /**
	  * @Method 설명 : 창작자 회원가입 front/request_creator 호출
	  * @Method Name : requestCreator
	  * @Date : 2019. 10. 28.
	  * @작성자 : 허 민
	  * @return
	  */
	@GetMapping(value = "/request_creator")
	public void requestCreator() {

		log.info("requestcreator!");
		
	}

	
}
