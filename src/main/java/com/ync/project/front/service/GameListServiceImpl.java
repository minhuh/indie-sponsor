package com.ync.project.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.domain.ContentVO;
import com.ync.project.domain.Criteria;
import com.ync.project.front.mapper.GameListMapper;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: GameListServiceImpl.java
  * @Date		: 2019. 11. 25. 
  * @Author		: 허 민
  * @프로그램 설명 : 게임 리스트 서비스 impl 파일 생성
  */
@Log4j
@Service
//@AllArgsConstructor
public class GameListServiceImpl implements GameListService{
	
	@Autowired
	private GameListMapper mapper;
	
	@Override
	public void register(ContentVO content) {
		// TODO Auto-generated method stub
		log.info("register........" + content);
		mapper.insertSelectKey(content);
	}

	@Override
	public ContentVO get() {
		// TODO Auto-generated method stub
		log.info("get........" );
		return mapper.read();
	}

	@Override
	public boolean modify(ContentVO content) {
		// TODO Auto-generated method stub
		log.info("modify........" + content);
		return mapper.update(content) == 1;
	}

	@Override
	public boolean remove(Long content_id) {
		// TODO Auto-generated method stub
		log.info("remove........" + content_id);
		return mapper.delete(content_id) == 1;
	}
	
	@Override
	public List<ContentVO> getList() {
		// TODO Auto-generated method stub
		log.info("getList.......");
		return mapper.getList();
	}
 
	@Override
	public List<ContentVO> getListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("get List with criteria: " + cri);
		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

	@Override
	public ContentVO get1() {
		// TODO Auto-generated method stub
		log.info("get1........");
		return mapper.read1();
	}

	@Override
	public ContentVO get2() {
		// TODO Auto-generated method stub
		log.info("get2........");
		return mapper.read2();
	}

	@Override
	public List<ContentVO> Act(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("Get List Action Genre Paginations....");
		return mapper.Act(cri);
	}

	@Override
	public List<ContentVO> getListWithPageByAdventure(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("Get List Adventure Genre Paginations....");
		return mapper.getListWithPageByAdventure(cri);
	}

	@Override
	public List<ContentVO> getListWithPageByRoguelike(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("Get List Roguelike Genre Paginations....");
		return mapper.getListWithPageByRoguelike(cri);
	}

	@Override
	public List<ContentVO> getListWithPageByPuzzle(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("Get List Puzzle Genre Paginations....");
		return mapper.getListWithPageByPuzzle(cri);
	}

	@Override
	public List<ContentVO> getListWithPageByRhythm(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("Get List Rhythm Genre Paginations....");
		return mapper.getListWithPageByRhythm(cri);
	}

	@Override
	public List<ContentVO> getListWithPageByHorror(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("Get List Horror Genre Paginations....");
		return mapper.getListWithPageByHorror(cri);
	}

	@Override
	public List<ContentVO> getListWithPageBySimulation(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("Get List Simulation Genre Paginations....");
		return mapper.getListWithPageBySimulation(cri);
	}

	@Override
	public List<ContentVO> getListWithPageByCasual(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("Get List Casual Genre Paginations....");
		return mapper.getListWithPageByCasual(cri);
	}

	@Override
	public List<ContentVO> getListWithPageByStrategy(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("Get List Strategy Genre Paginations....");
		return mapper.getListWithPageByStrategy(cri);
	}

	@Override
	public int getactTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getactTotal(cri);
	}

	@Override
	public int getadvTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getadvTotal(cri);
	}

	@Override
	public int getrogTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getrogTotal(cri);
	}

	@Override
	public int getpuzTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getpuzTotal(cri);
	}

	@Override
	public int getrhyTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getrhyTotal(cri);
	}

	@Override
	public int gethorTotal(Criteria cri) {
		log.info("get total count");
		return mapper.gethorTotal(cri);
	}

	@Override
	public int getsimTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getsimTotal(cri);
	}

	@Override
	public int getcasTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getcasTotal(cri);
	}

	@Override
	public int getstrTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getstrTotal(cri);
	}
}