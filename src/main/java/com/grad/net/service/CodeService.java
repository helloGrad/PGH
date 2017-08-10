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

	
	
	public List<CodeVo> get(){
		
	

		return CodeDao.get();
		
	}
}
