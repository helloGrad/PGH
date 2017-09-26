package com.grad.net.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grad.net.repository.NotiDao;
import com.grad.net.vo.NotiVo;
import com.grad.net.vo.StudyVo;

@Service
public class NotiService {
	
	@Autowired
	NotiDao notiDao;

	/**
	 * 허주한
	 */
	public List<NotiVo> getNotiList(String type) {
		
		return notiDao.getNotiList(type);
	}
	/**

	
	/**
	 * 허주한
	 */
	public List<NotiVo> getNotiListByPage(int page, String type) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>() ;
		map.put("page", page-1);
		map.put("type", type);
		return notiDao.getNotiListByPage(map);
	}
	
	/*
	 * 정예린, 박가혜
	 */
	public NotiVo getNoti(String tabnm, int no, Long userid) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tabnm", tabnm);
		map.put("no", no);
		map.put("userid", userid);
		
		System.out.println(userid);
		
		return notiDao.getByNo(map);

	}
	
	public NotiVo getNoti(String tabnm, int no) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tabnm", tabnm);
		map.put("no", no);
		
		return notiDao.getByNo(map);

	}
	
	/*
	 * 2017-09-18 정예린
	 */
	public List<StudyVo> getGradNotiList() {

		return notiDao.getGradNotiList();
	}

	/*
	 * 정예린 2017-09-18
	 */
	public List<StudyVo> getLabNotiList() {
		return notiDao.getLabNotiList();
	}

	/*
	 * 정예린 2017-09-18
	 */
	public List<StudyVo> getLabCodeList() {
		return notiDao.getLabCodeList();
	}

	/*
	 * 2017-09-22 정예린
	 */
	public List<StudyVo> getLabCodeList(int no) {
		return notiDao.getLabCodeList(no);
	}

	/*
	 * 2017-09-26 정예린
	 */
	public int getNotiCount() {
		return notiDao.getNotiCount();
	}

}
