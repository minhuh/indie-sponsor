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

import com.ync.project.admin.service.AEventService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;
import com.ync.project.domain.PageDTO;
import com.ync.project.util.UploadUtils;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/*")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class AdminEventController {
	

	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private AEventService eService;
	
	@GetMapping(value = "/content_aevent")
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public String content_aevent(Criteria cri, Model model) {
		
		int total = eService.getTotal(cri);
		
		log.info("Notice Lists :  " + cri);
		log.info("Notice Total : " + total);
//		model.addAttribute("list", mService.getList());
		
		model.addAttribute("list", eService.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));

		log.info("Welcome Content Anoitce!");
	
		return "admin/content_aevent";
	}

	@GetMapping(value = "/event_upload")
	@PreAuthorize("isAuthenticated()")
	public String content_upload() {

		log.info("Welcome Event Upload!");
	
		return "/admin/event_upload";
	}
	
	@PostMapping(value = "/event_upload")
	@PreAuthorize("isAuthenticated()")
	public String content_upload(MultipartFile[] uploadFile, EventVO eContent, RedirectAttributes rttr) {
				
		log.warn("글등록하기......");
		int index = 0;
		
		for (MultipartFile multipartFile : uploadFile) {
			if (multipartFile.getSize() > 0) {
				switch (index) {
				case 0:
					eContent.setMedia1(UploadUtils.uploadFormPost(multipartFile,uploadPath));
					break;
				default:
					eContent.setMedia2(UploadUtils.uploadFormPost(multipartFile,uploadPath));
					break;
				}
				index++;
			}
		}
		log.warn(eContent.getTitle());
		log.warn(eContent.getContent());
		log.warn(eContent.getUserid());
		log.warn(eContent.getMedia1());
		log.warn(eContent.getMedia2());
		
		eService.register(eContent);
		
		rttr.addFlashAttribute("result", eContent.getEvent_id());
		
		return "/admin/content_aevent";
	}
}
