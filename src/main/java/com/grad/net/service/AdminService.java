package com.grad.net.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grad.net.repository.AdminDao;
import com.grad.net.vo.NotiVo;
import com.grad.net.vo.OrganzVo;
import com.grad.net.vo.ResrchAcrsltVo;



@Service
public class AdminService {
	
	@Autowired
	AdminDao adminDao;
	
	/*
	 * 박가혜
	 */
	public void insertLab(OrganzVo organzVo) {
		
		adminDao.insertLab(organzVo);

	}

	/*
	 * 박가혜
	 */
	public void insertResrch(ResrchAcrsltVo resrchAcrsltVo) {
		
		adminDao.insertResrch(resrchAcrsltVo);

	}
	
	/*
	 * 박가혜
	 */
	public void registerNoti(NotiVo notiVo, String tabnm) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("notiVo", notiVo);
		map.put("tabnm", tabnm);
		
		System.out.println(notiVo);
		adminDao.insertNoti(map);		
	}
	
	

}
