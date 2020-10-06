package com.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.admin.mapper.AMemberMapper;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.GDonationVO;
import com.ync.project.domain.MemberVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AMemberServiceImpl implements AMemberService {

	@Autowired // @Inject
	private AMemberMapper mapper;

	// 멤버 등록
	public void register(MemberVO member) {

		log.info("register......" + member);

		mapper.insert(member);
	}
	
	//관리자 등록
	public void admin_register(MemberVO admin_member) {
		log.info("register......" + admin_member);

		mapper.admin_insert(admin_member);
	}

	// 멤버 상세보기
	public MemberVO get(String userid) {

		log.info("get......" + userid);

		return mapper.read(userid);
	};

	// 멤버 수정
	public boolean modify(MemberVO member) {

		log.info("modify......" + member);

		return mapper.update(member) == 1;
	};
	
	//창작자 강등
	public boolean creater_modify(String userid) {

		log.info("modify......" + userid);

		return mapper.creater_modify(userid) == 1;
	};

	//창작자 휴면
	public boolean creater_status(String userid) {

		log.info("modify......" + userid);

		return mapper.creater_status(userid) == 1;
	};

	
	// 멤버 삭제
	public boolean remove(String userid) {

		log.info("remove......" + userid);

		return mapper.delete(userid) == 1;
	};

	// 전체 멤버 목록
	public List<MemberVO> getList() {

		log.info("getList......");
		return mapper.getList();
	};

	// 멤버 목록 페이징
	public List<MemberVO> getListWithPaging(Criteria cri) {

		log.info("get List with criteria : " + cri);
		return mapper.getListWithPaging(cri);
	};

	// 창작자 목록 페이징
	public List<MemberVO> getListWithPagingWithCreater(Criteria cri) {

		log.info("get List with criteria : " + cri);
		return mapper.getListWithPagingWithCreater(cri);
	};

	// 멤버 전체 수
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

	// 전체 받은 후원 금액
	@Override
	public List<GDonationVO> getGetDonation(Criteria cri) {
		log.info("get total get donations");
		return mapper.getGetDonation(cri);
	}

	// 전체 보낸 후원 금액
	@Override
	public List<GDonationVO> getGiveDonation(Criteria cri) {
		log.info("get total give donations");
		return mapper.getGiveDonation(cri);
	}

	@Override
	public int getTotalCreater(Criteria cri) {
		log.info("get total Creaters......");
		return mapper.getTotalCreater(cri);
	};

	@Override
	public int getActiveUser(Criteria cri) {
		log.info("get Activate Users......");
		return mapper.getActiveUser(cri);
	}

	@Override
	public GDonationVO getGetDonationToUser(String userid) {
		log.info("get Get Donation To User......");
		return mapper.getGetDonationToUser(userid);
	}

	@Override
	public List<MemberVO> getAdminList() {
		// TODO Auto-generated method stub
		return mapper.getAdminList();
	}

	@Override
	public List<MemberVO> getAdminListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getAdminListWithPaging(cri);
	}

	@Override
	public int revoke(String userid) {
		log.info("revoke....");
		return mapper.revoke(userid);
	}

	@Override
	public List<MemberVO> getListWithPagingWithCreater_request(Criteria cri) {
		log.info("get List with criteria : " + cri);
		return mapper.getListWithPagingWithCreater_request(cri);
	};
	
	public boolean creater_accept(String userid) {

		log.info("modify......" + userid);

		return mapper.creater_accept(userid) == 1;
	};
	
	public boolean creater_cancle(String userid) {

		log.info("modify......" + userid);

		return mapper.creater_cancle(userid) == 1;
	};
	// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
//	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
}
