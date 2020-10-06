package com.ync.project.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.admin.service.AInquiryService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.InquiryVO;
import com.ync.project.domain.NoticeVO;
import com.ync.project.domain.PageDTO;
import com.ync.project.util.UploadUtils;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/*")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class AdminInquiryController {

	@Autowired
	private AInquiryService iService;

	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@GetMapping(value = "/inquiry_qna_list")
	//@PreAuthorize("hasRole('ROLE_ADMIN')")
	public String qna_list(Criteria cri, Model model) {

		int total = iService.getTotal(cri);

		log.info("Welcome Content Management!");
		log.info("Content Lists......\n" + cri + "\n#<--//end Content Lists +-+-+-+-+-+-+-+-+-+-+-//-->");
		log.info("Total Value = " + total + "\n#<--//end Total Value +-+-+-+-+-+-+-+-+-+-+-//-->");
		
		model.addAttribute("inquiry_list", iService.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	
		return "admin/inquiry_qna_list";
	}
	
	@GetMapping(value = "/inquiry_qna_answer")
	public String getQnaAnswer(HttpServletRequest request, Model model) {

		String inquiry_id = request.getParameter("inquiry_id");
		log.info("Welcome inquiry_qna_answer!");
		
		model.addAttribute("inquiry", iService.get(inquiry_id));
	
		return "admin/inquiry_qna_answer";
	}
	
	@PostMapping(value = "/inquiry_qna_answer")
	@PreAuthorize("isAuthenticated()")
	public String registQnaAnswer(InquiryVO iContent, RedirectAttributes rttr) {

		log.info("Regist Inquiry_qna_answer's reply!");

		log.warn(iContent.getComments());
		
		iService.commentRegister(iContent);
		
		rttr.addFlashAttribute("result", iContent.getInquiry_id());
		
		return "/admin/inquiry_qna_list";
	}
}
