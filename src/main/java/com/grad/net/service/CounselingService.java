package com.grad.net.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grad.net.repository.CounselingDao;
import com.grad.net.vo.CounselingVo;
import com.grad.net.vo.MemberVo;
import com.grad.net.vo.NotiVo;
import com.grad.net.vo.OrganzVo;



@Service
public class CounselingService {
	
	@Autowired
	CounselingDao counselingDao;
	
	
	
	public void write(CounselingVo counselingVo) {
		
		counselingDao.insert(counselingVo);

	}

	
	public List<CounselingVo> counselingList() {
		
		return counselingDao.getcounselingList();
	}

	
	public List<CounselingVo> getReplyList() {
		
		return counselingDao.getReplyList();
	}
	
	
}
