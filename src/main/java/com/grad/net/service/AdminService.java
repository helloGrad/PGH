package com.grad.net.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grad.net.repository.AdminDao;
import com.grad.net.vo.OrganzVo;
import com.grad.net.vo.ResrchAcrsltVo;



@Service
public class AdminService {
	
	@Autowired
	AdminDao adminDao;
	
	public void insertLab(OrganzVo organzVo) {
		
		adminDao.insertLab(organzVo);

	}

	public void insertResrch(ResrchAcrsltVo resrchAcrsltVo) {
		
		adminDao.insertResrch(resrchAcrsltVo);

	}
	
	
	

}
