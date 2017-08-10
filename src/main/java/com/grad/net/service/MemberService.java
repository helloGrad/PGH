package com.grad.net.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grad.net.repository.CodeDao;
import com.grad.net.repository.MemberDao;
import com.grad.net.vo.CodeVo;
import com.grad.net.vo.MemberVo;




@Service
public class MemberService {
	
	
	@Autowired
	private MemberDao MemberDao;
	


	
	
	public boolean existEmail(String id){
		
		MemberVo MemberVo = MemberDao.get(id);
		
		
		return MemberVo != null;
		
	}
	
	public MemberVo getUser(String IDEN, String PW) throws Exception{
		
		return MemberDao.get(IDEN, PW);
				
		
	}
	
	public void register(MemberVo MemberVo){

		
		MemberDao.insert(MemberVo);

	

		
	}
	

	
	public List<MemberVo> usermadeinfor(MemberVo MemberVo){
		
	
		
		
		return MemberDao.get(MemberVo);
		
	}
	
}
