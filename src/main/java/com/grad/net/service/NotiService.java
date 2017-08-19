package com.grad.net.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grad.net.repository.NotiDao;
import com.grad.net.vo.NotiVo;

@Service
public class NotiService {
	
	@Autowired
	NotiDao notiDao;

	public List<NotiVo> getNotiList() {
		return notiDao.getNotiList();
	}
	
	
	/*
	 * 박가혜
	 */
	public NotiVo getNoti(int no) {
		return notiDao.getByNo(no);
		
	}

}
