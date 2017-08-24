package com.grad.net.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grad.net.repository.CounselingDao;
import com.grad.net.vo.CounselingVo;
import com.grad.net.vo.MemberVo;
import com.grad.net.vo.NotiVo;




@Service
public class CounselingService {
	
	@Autowired
	CounselingDao counselingDao;
	
	
	/**
	 * 박가혜 2017-08-23
	 */
	public void write(CounselingVo counselingVo) {
		
		counselingDao.insert(counselingVo);

	}

	/**
	 * 박가혜 2017-08-23
	 */
	public List<CounselingVo> counselingList() {
		
		return counselingDao.getcounselingList();
	}

	/**
	 * 박가혜 2017-08-23
	 */
	public List<CounselingVo> getReplyList() {
		
		return counselingDao.getReplyList();
	}
	/**
	 * 박가혜 2017-08-24
	 */
	public  CounselingVo counselingPrnts(Long no) {
		
		return counselingDao.getcounselingPrnts(no);
	}
	
	/**
	 * 박가혜 2017-08-24
	 */
	public List<CounselingVo> counselingReplyDetail(Long no) {
		
		return counselingDao.getReplyDetail(no);
	}
	
	/**
	 * 박가혜 2017-08-24
	 */
	public void replyWrite(CounselingVo counselingVo) {
		
		counselingDao.insertReply(counselingVo);

	}
	
	
}
