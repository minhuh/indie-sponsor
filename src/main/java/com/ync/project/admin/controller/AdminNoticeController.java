package com.ync.project.admin.controller;

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

import com.ync.project.domain.Criteria;
import com.ync.project.domain.NoticeVO;
import com.ync.project.domain.PageDTO;
import com.ync.project.front.service.NoticeService;
import com.ync.project.util.UploadUtils;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/*")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class AdminNoticeController {

	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private NoticeService nService;
	
	@GetMapping(value = "/content_anotice")
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public String content_acontent(Criteria cri, Model model) {
		
		int total = nService.getTotal(cri);
		
		log.info("Notice Lists :  " + cri);
		log.info("Notice Total : " + total);
		
		model.addAttribute("list", nService.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));

		log.info("Welcome Content Aevent!");
	
		return "admin/content_anotice";
	}

	@GetMapping(value = "/notice_upload")
	@PreAuthorize("isAuthenticated()")
	public String content_upload() {

		log.info("Welcome Content Upload!");
	
		return "/admin/notice_upload";
	}
	
	@PostMapping(value = "/notice_upload")
	@PreAuthorize("isAuthenticated()")
	public String content_upload(MultipartFile[] uploadFile, NoticeVO nContent, RedirectAttributes rttr) {
				
		log.warn("글등록하기......");
		int index = 0;
		
		for (MultipartFile multipartFile : uploadFile) {
			if (multipartFile.getSize() > 0) {
				switch (index) {
				case 0:
					nContent.setMedia1(UploadUtils.uploadFormPost(multipartFile,uploadPath));
					break;
				default:
					nContent.setMedia2(UploadUtils.uploadFormPost(multipartFile,uploadPath));
					break;
				}
				index++;
			}
		}
		log.warn(nContent.getTitle());
		log.warn(nContent.getContent());
		log.warn(nContent.getUserid());
		log.warn(nContent.getMedia1());
		log.warn(nContent.getMedia2());
		
		nService.register(nContent);
		
		rttr.addFlashAttribute("result", nContent.getNotice_id());
		
		return "/admin/content_anotice";
	}
}
