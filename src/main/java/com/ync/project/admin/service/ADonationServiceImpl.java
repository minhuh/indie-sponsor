package com.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.admin.mapper.ADonationMapper;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.DonationVO;
import com.ync.project.domain.GDonationVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ADonationServiceImpl implements ADonationService {
	
	@Autowired // @Inject
	private ADonationMapper mapper;
	
	// 후원 등록
	public void register(DonationVO donation) {

		log.info("register......" + donation);

		mapper.insert(donation);
	}
	
	// 후원 상세보기
	public DonationVO get(String userid){
		
		log.info("get......" + userid);
		
		return mapper.read(userid);
	};
	
	// 후원 수정
	public boolean modify(DonationVO donation) {
		
		log.info("modify......" + donation);
		
		return mapper.update(donation) == 1;
	};
	
	// 후원 삭제
	public boolean remove(String userid, String content_id) {

		log.info("remove......" + userid + ", " + content_id);
		
		return mapper.delete(userid, content_id) == 1;
	};
	
	// 전체 후원 목록
	public List<DonationVO> getList(){

		log.info("getList......");
		return mapper.getList();
	};
	
	// 후원 목록 페이징 
	public List<DonationVO> getListWithPaging(Criteria cri){

		log.info("get List with criteria : " + cri);
		return mapper.getListWithPaging(cri);
	};

	// 후원 전체 수
	 public int getTotal(Criteria cri){
			log.info("get total count");
			return mapper.getTotalCount(cri);
		}

	@Override
	public List<GDonationVO> getGetDonation(Criteria cri) {
		log.info("get total get donations");
		return mapper.getGetDonation(cri);
	}

	@Override
	public List<GDonationVO> getGiveDonation(Criteria cri) {
		log.info("get total give donations");
		return mapper.getGiveDonation(cri);
	}

	@Override
	public int getTotalDonation() {
		log.info("get Total Donation Costs...");
		return mapper.getTotalDonation();
	}
	
	@Override
	public int creatersGetDonation() {
		log.info("Creaters Get Donation Costs...");
		return mapper.creatersGetDonation();
	}

	@Override
	public List<DonationVO> getListWithPagingAndContent(Criteria cri) {
		log.info("getListWithPagingAndContent ..");
		return mapper.getListWithPagingAndContent(cri);
	}

	// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
//	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
}
