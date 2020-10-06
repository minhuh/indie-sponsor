package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.domain.ChangelogVO;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.PageDTO;
import com.ync.project.front.service.ChangelogService;
import com.ync.project.util.UploadUtils;

import lombok.extern.log4j.Log4j;



 /**
  * @FileName	: FrontDevelNoteController.java
  * @Date		: 2019. 12. 12. 
  * @Author		: 석준영
  * @프로그램 설명 :	개발노트 컨트롤러 파일 및 기능 생성
  */

@Controller
@Log4j
@RequestMapping("/*")
public class FrontDevelNoteController {
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private ChangelogService service;
	
	/**
	  * @Method 설명 : 개발노트 리스트 보기 front/developer_note 호출
	  * @Method Name : game_developer_note
	  * @Date : 2019. 12. 12.
	  * @작성자 : 석준영
	  * @return 개발노트 리스트와 페이징
	  */
	@GetMapping(value = "/developer_note")
	public String developerNote(Criteria cri, Model model) {
		
		log.info("develnote!");
		int total = service.getTotal(cri);
		log.info("total: " + total);
		
		model.addAttribute("chlog_list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		return "/front/developer_note";
	}
	
	 /**
	  * @Method 설명 : 개발노트 상세보기 front/game_developer_note 호출
	  * @Method Name : game_developer_note
	  * @Date : 2019. 12. 12.
	  * @작성자 : 석준영
	  * @return 개발노트 상세보기
	  */
	@GetMapping(value = "/game_developer_note")
	public String gameDeveloperNote(@RequestParam("change_log_id") Long change_log_id, @ModelAttribute("cri") Criteria cri, Model model) {
		
		log.info("develnote detail!");
		log.info("/get............." + change_log_id);
		model.addAttribute("change_log_content", service.get(change_log_id));
		model.addAttribute("changelog_comment", service.getchangelog_comment(change_log_id));
		model.addAttribute("patch_note_List", service.getpatch_note(change_log_id));
		model.addAttribute("other_patch", service.getother_patch(change_log_id));
		return "/front/game_developer_note";
	}
	
	 /**
	  * @Method 설명 : 개발노트 작성폼 가져오기 front/game_changelog_writeform 호출
	  * @Method Name : game_changelog_Write
	  * @Date : 2019. 12. 13.
	  * @작성자 : 석준영
	  * @return 개발노트 작성 폼
	  */
	@GetMapping("/game_changelog_writeform")
	@PreAuthorize("isAuthenticated()")
	public String game_changelog_Write(@RequestParam("userid") String userid,Model model) { 
		log.info("등록 양식 가져오기........");
		model.addAttribute("mygame_list", service.getMygame_list(userid));
		return "front/game_changelog_writeform";
	}
	
	 /**
	  * @Method 설명 : 개발노트 작성폼 DB 입력하기 front/game_changelog_writeform 호출
	  * @Method Name : game_changelog_Write
	  * @Date : 2019. 12. 13.
	  * @작성자 : 석준영
	  * @return 입력 후 개발노트 페이지로
	  */
	@PostMapping(value = "/game_changelog_writeform")
	@PreAuthorize("isAuthenticated()")
	public String game_changelog_Write(MultipartFile[] uploadFile, ChangelogVO chlog, RedirectAttributes rttr) {
		log.info("패치노트 등록하기........");
		int index = 0;
		for (MultipartFile multipartFile : uploadFile) {
			// 실제로 upload된 file이 있을때만 upload 시킨다. 
			if (multipartFile.getSize() > 0) {
				switch (index) {
				case 0:
					chlog.setMedia1(UploadUtils.uploadFormPost(multipartFile,uploadPath));
					break;
				case 1:
					chlog.setMedia2(UploadUtils.uploadFormPost(multipartFile,uploadPath));
					break;
				case 2:
					chlog.setMedia3(UploadUtils.uploadFormPost(multipartFile,uploadPath));
					break;
				default:
					chlog.setMedia4(UploadUtils.uploadFormPost(multipartFile,uploadPath));
					break;
				}
				//list.add(UploadUtils.uploadFormPost(multipartFile));
				index++;
			}
		}
		service.register(chlog);
		rttr.addFlashAttribute("result", chlog.getChange_log_id());
		return "redirect:/developer_note";
	}
	
}
