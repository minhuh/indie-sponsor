package com.ync.project.front.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;
import com.ync.project.domain.PageDTO;
import com.ync.project.front.service.BookmarkService;
import com.ync.project.front.service.FundingService;
import com.ync.project.front.service.MemberService;
import com.ync.project.front.service.MypageService;
import com.ync.project.security.domain.CustomUser;

import lombok.extern.log4j.Log4j;



 /**
  * @FileName	: FrontMyPageController.java
  * @Date		: 2019. 10. 28. 
  * @Author		: 허 민
  * @프로그램 설명 : front 마이페이지 관련 Controller
  */
@Controller
@Log4j
@RequestMapping("/mypage/*")
public class FrontMyPageController {
	 
	@Autowired
	private BookmarkService bookmarkService;
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private FundingService fService;
	
	@Autowired
	private MypageService mpService;

	/**
	  * @Method 설명 : 회원 정보 상세 화면 불러오기
	  * @Method Name : mp_Member_detail
	  * @Date : 2019. 12. 13.
	  * @작성자 : 김길재
	  * @param model
	  * @return
	  */
	@GetMapping(value = "/mp_member_detail")
//	@PreAuthorize("hasRole('ROLE_USER')")
	public String mp_Member_detail(Model model) {

		log.info("Welcome Info detail!");
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CustomUser userid = (CustomUser) authentication.getPrincipal();
		
		model.addAttribute("member_info", mService.read_member(userid.getUsername()));
		
		return "front/mp_member_detail";
	}

	 /**
	  * @Method 설명 : 회원 정보 수정 불러오기
	  * @Method Name : mp_Member_modify
	  * @Date : 2019. 12. 13.
	  * @작성자 : 김길재
	  * @param model
	  * @return
	  */
	@GetMapping(value = "/mp_member_modify")
//	@PreAuthorize("hasRole('ROLE_USER')")
	public String mp_Member_modify(Model model) {

		
		log.info("Welcome Info detail!");
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CustomUser userid = (CustomUser) authentication.getPrincipal();
		
		model.addAttribute("member_info", mService.read_member(userid.getUsername()));
		
		return "front/mp_member_modify";
	}
	
	 /**
	  * @Method 설명 : 회원 정보 수정 입력 값 보내기
	  * @Method Name : mp_member_modify
	  * @Date : 2019. 12. 13.
	  * @작성자 : 김길재
	  * @param userid
	  * @param rttr
	  * @return
	  */
	@PostMapping("/mp_member_modify")
	@PreAuthorize("isAuthenticated()")
	public String mp_member_modify(MemberVO userid, RedirectAttributes rttr) {
		mService.member_modify(userid);
		rttr.addFlashAttribute("result", userid.getUserid());
		return "redirect:/mypage/mp_member_detail";
	}
	
	/**
	  * @Method 설명 : 북마크 한 컨텐츠 목록 front/mp_bookmark 호출
	  * @Method Name : mpBookmark
	  * @Date : 2019. 10. 28.
	  * @작성자 : 허 민
	  * @return
	  */
	@GetMapping(value = "/mp_bookmark")
//	@PreAuthorize("hasRole('ROLE_USER')")
	public String mpBookmark(@ModelAttribute("cri") Criteria cri, Model model) {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CustomUser user = (CustomUser) authentication.getPrincipal();
		
		log.info("mpbookmark! for " + user.getUsername());
		model.addAttribute("bmk", bookmarkService.getList(cri, user.getUsername()));
		//model.addAttribute("pageMaker", new PageDTO(cri, 123));
		//model.addAttribute("del", bookmarkService.delete(bookmark));
		int total = bookmarkService.getTotal(cri);
		
		log.info("total: " + total);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		return "front/mp_bookmark";
	}
	
	//삭제 반드시 post
	@PostMapping("/rm_bookmark")
	//@PreAuthorize("principal.username == #writer")
	public String delete(@RequestParam("userid") String userid, @ModelAttribute("cri") 
	Criteria cri, RedirectAttributes rttr, String title, Long bookmark) {
		log.info("remove... " + title);
		
		if (bookmarkService.delete(bookmark)) {
			rttr.addFlashAttribute("result", "success");
		}

		
		return "redirect:/front/mp_bookmark" + cri.getListLink();
	}
	
	
	 /**
	  * @Method 설명 : 펀딩중인 컨텐츠 목록 front/mp_funding
	  * @Method Name : mpFunding
	  * @Date : 2019. 10. 28.
	  * @작성자 : 허 민
	  * @return
	  */
	
	
	@GetMapping(value = "/mp_funding")
//	@PreAuthorize("hasRole('ROLE_USER')")
	public String mpFunding(Criteria cri, Model model) {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CustomUser user = (CustomUser) authentication.getPrincipal();
		
		cri.setUserid(user.getUsername());

		model.addAttribute("content", fService.mpgetList(cri));
		
		int total = mpService.getTotal(cri);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		return "front/mp_funding";
	}
	
	 
	 /**
	  * @Method 설명 : 창작자 신청 페이지 호출
	  * @Method Name : mpRequestCreator
	  * @Date : 2019. 12. 13.
	  * @작성자 : 김길재
	  * @return
	  */
	@GetMapping(value = "/mp_request_creator")
//	@PreAuthorize("hasRole('ROLE_USER')")
	public String mpRequestCreator() {

		log.info("mprequestCreator!");

		return "front/mp_request_creator";
	}
	
	 /**
	  * @Method 설명 : 창작자 신청 입력 정보 update
	  * @Method Name : request_creator
	  * @Date : 2019. 12. 12.
	  * @작성자 : 김길재
	  * @param r_creator
	  * @param rttr
	  * @return
	  */
	@PostMapping("/mp_request_creator")
	@PreAuthorize("isAuthenticated()")
	public String request_creator(MemberVO r_creator, RedirectAttributes rttr) {
		mService.request_creator(r_creator);
		rttr.addFlashAttribute("result", r_creator.getUserid());
		return "redirect:/mypage/mp_request_creator";
	}
	
	 /**
	  * @Method 설명 : 회원 탈퇴 기능을 구현하려 했으나 비밀번호 암호화 문제로 실패
	  * @Method Name : mpWithdraw
	  * @Date : 2019. 10. 28.
	  * @작성자 : 김정현
	  * @return
	  */
	@GetMapping(value = "/mp_withdraw")
	@PreAuthorize("hasRole('ROLE_USER')")
	public String getMpWithdraw(Principal principal) {
		
		log.info("get withdraw");
		return "front/mp_withdraw";
	}
	
	
	@Autowired
	BCryptPasswordEncoder passEncoder;
	@PostMapping(value = "/mp_withdraw")
	@PreAuthorize("hasRole('ROLE_USER')")
	public String postMpWithdraw(HttpSession session, MemberVO vo, RedirectAttributes rttr) {
		
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		String oldPass = member.getUserpw();
		String newPass = vo.getUserpw();
		
		boolean passMatch = passEncoder.matches(newPass, oldPass);
		
		if(passMatch==false) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/front/mp_withdraw";
		}
		
		log.info("get withdraw");
		return "redirect:/";
	}
	
	
	@PostMapping(value = "/mp_selfcheck")
	public String mpWithdrawChecked(Model model, RedirectAttributes rttr, String userpw) {
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CustomUser user = (CustomUser) authentication.getPrincipal();
		
		String userid =  user.getUsername();
		
		log.info("mp With draw checked User VO......" + userid + " and, " + userpw);
		
		return "front/mp_selfcheck";
	}
	
	 /**
	  * @Method 설명 : 본인확인 front/mp_selfcheck 호출
	  * @Method Name : mpSelfCheck
	  * @Date : 2019. 10. 28.
	  * @작성자 : 허 민
	  * @return
	  */
	@GetMapping(value = "/mp_selfcheck")
	@PreAuthorize("isAuthenticated()")
	public String mpSelfCheck() {

		log.info("selfcheck!");

		return "front/mp_selfcheck";
	}

	
	@GetMapping(value = "/mp_uploadcontent")
	@PreAuthorize("isAuthenticated()")
	public String mpUploadcontent(Criteria cri, Model model) {
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CustomUser user = (CustomUser) authentication.getPrincipal();
		
		cri.setUserid(user.getUsername());

		model.addAttribute("content", mpService.getList(cri));
		
		int total = mpService.getUploadTotal(cri);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		return "front/mp_uploadcontent";
	}

	 /**
	  * @Method 설명 : 펀딩한 게임 목록 front/mp_bookmark 호출
	  * @Method Name : mpDonationContent
	  * @Date : 2019. 12. 13.
	  * @작성자 : 허 민
	  * @param cri
	  * @param model
	  * @return
	  */
	@GetMapping(value = "/mp_donation_game")
	@PreAuthorize("isAuthenticated()")
	public String mpDonationContent(Criteria cri, Model model) {
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CustomUser user = (CustomUser) authentication.getPrincipal();
		
		cri.setUserid(user.getUsername());

		model.addAttribute("content", mpService.getFundList(cri));
		
		int total = mpService.getFundTotal(cri);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		return "front/mp_donation_game";
	}
	
}
