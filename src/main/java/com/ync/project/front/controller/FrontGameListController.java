package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.PageDTO;
import com.ync.project.front.service.GameListService;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: FrontGameListController.java
  * @Date		: 2019. 11. 25. 
  * @Author		: 허 민
  * @프로그램 설명 : 장르별 게임 리스트 컨트롤러
  */
@Controller
@Log4j
@RequestMapping("/*")
public class FrontGameListController {
	@Autowired

	private GameListService gService;

	/**
	 * @Method 설명 : 게임 리스트 game_list.jsp 호출
	 * @Method Name : gameList
	 * @Date : 2019. 11. 25.
	 * @작성자 : 허 민
	 * @return
	 */

	@GetMapping(value = "/game_list")
	public String gameList(Criteria cri, Model model) {
		
		cri.setAmount(30);
		
		int total = gService.getTotal(cri);
		int acttotal = gService.getactTotal(cri);
		int advtotal = gService.getadvTotal(cri);
		int rogtotal = gService.getrogTotal(cri);
		int puztotal = gService.getpuzTotal(cri);
		int rhytotal = gService.getrhyTotal(cri);
		int hortotal = gService.gethorTotal(cri);
		int simtotal = gService.getsimTotal(cri);
		int castotal = gService.getcasTotal(cri);
		int strtotal = gService.getstrTotal(cri);
	
		model.addAttribute("allContent", gService.getListWithPaging(cri));
		model.addAttribute("actContent", gService.Act(cri));
		model.addAttribute("advContent", gService.getListWithPageByAdventure(cri));
		model.addAttribute("rogContent", gService.getListWithPageByRoguelike(cri));
		model.addAttribute("puzContent", gService.getListWithPageByPuzzle(cri));
		model.addAttribute("rhyContent", gService.getListWithPageByRhythm(cri));
		model.addAttribute("horContent", gService.getListWithPageByHorror(cri));
		model.addAttribute("simContent", gService.getListWithPageBySimulation(cri));
		model.addAttribute("casContent", gService.getListWithPageByCasual(cri));
		model.addAttribute("strContent", gService.getListWithPageByStrategy(cri));
		
		model.addAttribute("total", total);
		model.addAttribute("acttotal", acttotal);
		model.addAttribute("advtotal", advtotal);
		model.addAttribute("rogtotal", rogtotal);
		model.addAttribute("puztotal", puztotal);
		model.addAttribute("rhytotal", rhytotal);
		model.addAttribute("hortotal", hortotal);
		model.addAttribute("simtotal", simtotal);
		model.addAttribute("castotal", castotal);
		model.addAttribute("strtotal", strtotal);
		
		return "front/game_list";
	}

	@GetMapping(value = "/game_list_all")
	public String alllist(Criteria cri, Model model) {
		
		String genre = "_all"; 
		int total = gService.getTotal(cri);
		model.addAttribute("genreContent", gService.getListWithPaging(cri));
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("genre", genre);
		model.addAttribute("total", total);

		return "front/game_list_genre";
	}

	@GetMapping(value = "/game_list_action")
	public String actionlist(Criteria cri, Model model) {
		
		String genre = "_action"; 
		int total = gService.getactTotal(cri);
		model.addAttribute("genreContent", gService.Act(cri));
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("genre", genre);
		model.addAttribute("total", total);

		return "front/game_list_genre";
	}

	@GetMapping(value = "/game_list_adventure")
	public String adventurelist(Criteria cri, Model model) {
		
		String genre = "_adventure"; 
		int total = gService.getadvTotal(cri);
		model.addAttribute("genreContent", gService.getListWithPageByAdventure(cri));
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("genre", genre);
		model.addAttribute("total", total);

		return "front/game_list_genre";
	}

	@GetMapping(value = "/game_list_roguelike")
	public String roguelikelist(Criteria cri, Model model) {
		
		String genre = "_roguelike"; 
		int total = gService.getrogTotal(cri);
		model.addAttribute("genreContent", gService.getListWithPageByRoguelike(cri));
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("genre", genre);
		model.addAttribute("total", total);

		return "front/game_list_genre";
	}

	@GetMapping(value = "/game_list_puzzle")
	public String puzzlelist(Criteria cri, Model model) {
		
		String genre = "_puzzle"; 
		int total = gService.getpuzTotal(cri);
		model.addAttribute("genreContent", gService.getListWithPageByPuzzle(cri));
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("genre", genre);
		model.addAttribute("total", total);

		return "front/game_list_genre";
	}

	@GetMapping(value = "/game_list_rhythm")
	public String rhythmlist(Criteria cri, Model model) {
		
		String genre = "_rhythm"; 
		int total = gService.getrhyTotal(cri);
		model.addAttribute("genreContent", gService.getListWithPageByRhythm(cri));
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("genre", genre);
		model.addAttribute("total", total);

		return "front/game_list_genre";
	}

	@GetMapping(value = "/game_list_horror")
	public String horrorlist(Criteria cri, Model model) {
		
		String genre = "_horror"; 
		int total = gService.gethorTotal(cri);
		model.addAttribute("genreContent", gService.getListWithPageByHorror(cri));
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("genre", genre);
		model.addAttribute("total", total);

		return "front/game_list_genre";
	}

	@GetMapping(value = "/game_list_simulation")
	public String simulationlist(Criteria cri, Model model) {
		
		String genre = "_simulation"; 
		int total = gService.getsimTotal(cri);
		model.addAttribute("genreContent", gService.getListWithPageBySimulation(cri));
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("genre", genre);
		model.addAttribute("total", total);

		return "front/game_list_genre";
	}

	@GetMapping(value = "/game_list_casual")
	public String casuallist(Criteria cri, Model model) {
		
		String genre = "_casual"; 
		int total = gService.getcasTotal(cri);
		model.addAttribute("genreContent", gService.getListWithPageByCasual(cri));
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("genre", genre);
		model.addAttribute("total", total);

		return "front/game_list_genre";
	}

	@GetMapping(value = "/game_list_strategy")
	public String strategylist(Criteria cri, Model model) {
		
		String genre = "_strategy"; 
		int total = gService.getstrTotal(cri);
		model.addAttribute("genreContent", gService.getListWithPageByStrategy(cri));
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("genre", genre);
		model.addAttribute("total", total);

		return "front/game_list_genre";
	}
}
