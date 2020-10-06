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

import com.ync.project.admin.service.AContentService;
import com.ync.project.admin.service.AEventService;
import com.ync.project.admin.service.AGenreService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.NoticeVO;
import com.ync.project.domain.PageDTO;
import com.ync.project.front.service.NoticeService;
import com.ync.project.util.UploadUtils;

import lombok.extern.log4j.Log4j;

/**
 * @FileName	: AdminBoardController.java
 * @Date		: 2019. 10. 23. 
 * @Author		: 석준영
 * @프로그램 설명 : admin 페이지 게시판 controller
 */
@Controller
@Log4j
@RequestMapping("/admin/*")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class AdminBoardController {
	
	@Autowired
	private AEventService eService;
	
	@Autowired
	private AContentService cService;
	
	@Autowired
	private AGenreService gService;
	
	@GetMapping(value = "/content_management")
	public void content_management(Criteria cri, Model model) {

		int total = cService.getTotal(cri);

		log.info("Welcome Content Management!");
		log.info("Content Lists......\n" + cri + "\n#<--//end Content Lists +-+-+-+-+-+-+-+-+-+-+-//-->");
		log.info("Total Value = " + total + "\n#<--//end Total Value +-+-+-+-+-+-+-+-+-+-+-//-->");
		
		model.addAttribute("content_list", cService.getListWithPaging(cri));
		model.addAttribute("genre_list", gService.getList());
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	
	@GetMapping(value = "/content_management/remove_content")
	public String removeContent(HttpServletRequest request) {

		String content_id = request.getParameter("content_id");

		log.info("Welcome Content Management Remove Action!");
		log.info("Content_id Value = " + content_id + "\n#<--//end Total Value +-+-+-+-+-+-+-+-+-+-+-//-->");
		
		cService.remove(content_id);
		
		return "redirect:/admin/content_management";
	}
}