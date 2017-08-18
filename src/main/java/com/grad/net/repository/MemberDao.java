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

	//�Ϲ� ȸ������
	public void insert(MemberVo memberVo) {
		sqlSession.insert("member.insert", memberVo);
	}
	
	//snsȸ������
	public void snsinsert(Map<String, Object> map) {		
		sqlSession.insert("member.snsinsert",map);		
	}


	public MemberVo getByToken(MemberVo memberVo) {
		return sqlSession.selectOne("member.getByToken", memberVo);
	}

	public MemberVo getByIden(String EMAIL) {
		return sqlSession.selectOne("member.getByIden", EMAIL);
	}

	//////////////////////////////// getUser(�α��� �� ��)////////////////////////
	public MemberVo getUser(Map<String, Object> map) throws Exception {
		return sqlSession.selectOne("member.getByLoginInfo", map);
	}

	//��������
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
	




}
