package com.grad.net.repository;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.grad.net.vo.CodeVo;
import com.grad.net.vo.MemberVo;

@Repository
public class MemberDao {

	@Autowired
	private SqlSession sqlSession;


	public void insert(MemberVo memberVo) {
		sqlSession.insert("member.insert", memberVo);
	}
	
	
	public void snsinsert(Map<String, Object> map) {		
		sqlSession.insert("member.snsinsert",map);		
	}


	public MemberVo getByToken(MemberVo memberVo) {
		return sqlSession.selectOne("member.getByToken", memberVo);
	}

	public MemberVo getByIden(String EMAIL) {
		return sqlSession.selectOne("member.getByIden", EMAIL);
	}

	
	public MemberVo getUser(Map<String, Object> map) throws Exception {
		return sqlSession.selectOne("member.getByLoginInfo", map);
	}

	
	public List<CodeVo> getMbinfoList(MemberVo memberVo) {
	
		Long mbNo = memberVo.getMbNo();
		return sqlSession.selectList("member.getByCode", mbNo);
	}

	public void insertMbinfo(Long mbNo, String information) {				
		Map<String, Object> map= new HashMap<String, Object>(); 
		
		map.put("mbNo", mbNo);
		map.put("information", information);
		
		sqlSession.insert("member.insertMbinfo",map);		
	}
	
	public void infordelete(Long mbNo){		
		sqlSession.delete("member.deleteMbinfo",mbNo);		
	}
	

	public MemberVo getUser(String iden){
		return sqlSession.selectOne("member.getBySns", iden);
	}

	
	public void updateInfoYn(Long mbNo){
		
		sqlSession.update("member.updateInfoYn", mbNo);
	}

	/*
	 * 정예린 스크랩 2017-09-19
	 */
	public boolean insertScrap(Map<String, Object> map) {
		return sqlSession.insert("member.insertScrap",map)==1; 
	}


	public boolean deleteScrap(Map<String, Object> map) {
		return sqlSession.delete("member.deleteScrap",map)==1; 
	}

	public List<MemberVo> getScrapList(Long mbNo) {
		return sqlSession.selectList("member.getScrapList", mbNo);
	}

}
