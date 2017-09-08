package com.grad.net.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grad.net.repository.CodeDao;
import com.grad.net.vo.CodeVo;


@Service
public class CodeService {	
	
	@Autowired
	private CodeDao CodeDao;	
	
	/*
	 * 박가혜
	 */	
	public List<CodeVo> getCodeList(){	

		return CodeDao.getCodeList();		
	}
	
	
	
	public List<CodeVo> getMajorList(String type){
		
		String type2 = null;
		
		if(type.equals("공학")) {
			
			type2="D%";
			
		
			
		}
		if(type.equals("의학")) {
			
			type2="E%";
			
		
			
		}
		
		
		return CodeDao.selectMajorList(type2);	
	}
}
