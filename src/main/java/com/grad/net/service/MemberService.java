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
	

	
	public List<CodeVo> usermadeinfor(MemberVo MemberVo){
		
	
		
		
		return MemberDao.get(MemberVo);
		
	}
	
	public void Saveinformation(Long MB_NO, List<String> information){
		
		
		for(int i=0; i<information.size(); i++) {
	    	   
				MemberDao.insertinformation(MB_NO, information.get(i));
	    	  
	   }
	     

	}
	
	public void informationupdate(Long MB_NO,String[] infor) {
		
		MemberDao.infordelete(MB_NO);
		
		for(int i=0; i<infor.length; i++) {
	    	   
			MemberDao.insertinformation(MB_NO, infor[i]);
    	  
   }
		
		
	}

	
}
