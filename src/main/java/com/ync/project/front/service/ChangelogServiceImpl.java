package com.ync.project.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.domain.ChangelogVO;
import com.ync.project.domain.Criteria;
import com.ync.project.front.mapper.ChangelogMapper;

import lombok.extern.log4j.Log4j;

/**
  * @FileName	: ChangelogServiceImpl.java
  * @Date		: 2019. 11. 25. 
  * @Author		: 석준영
  * @프로그램 설명 : 게임 패치노트 서비스 impl 파일
  */

@Log4j
@Service
public class ChangelogServiceImpl implements ChangelogService {
	
	@Autowired
	private ChangelogMapper mapper;
	
	@Override
	public void register(ChangelogVO changelog) {
		// TODO Auto-generated method stub
		log.info("Changelog register........");
		mapper.insert(changelog);
	}

	@Override
	public ChangelogVO get(Long change_log_id) {
		log.info("get......" + change_log_id);
		
		return mapper.read(change_log_id);
	}

	@Override
	public boolean modify(ChangelogVO changelog) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean remove(Long bno) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<ChangelogVO> getList() {
		// TODO Auto-generated method stub
		log.info("Changelog getList()........");
		return mapper.getList();	
	}

	@Override
	public List<ChangelogVO> getListWithPaging(Criteria cri) {
		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

	@Override
	public ChangelogVO getchangelog_comment(Long change_log_id) {
		log.info("get changelog_comment......" + change_log_id);
		
		return mapper.readComment(change_log_id);
	}

	@Override
	public List<ChangelogVO> getpatch_note(Long change_log_id) {
		log.info("get changelog_comment......" + change_log_id);
		
		return mapper.readpatchnoteList(change_log_id);
	}

	@Override
	public List<ChangelogVO> getother_patch(Long change_log_id) {
		log.info("get otehr changelog_comment......" + change_log_id);
		
		return mapper.readother_patch(change_log_id);
	}

	@Override
	public List<ChangelogVO> getMygame_list(String userid) {
		log.info("get mygame list......" + userid);
		return mapper.getMygame_list(userid);
	}
	
}
