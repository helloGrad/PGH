package com.grad.net.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.grad.net.vo.CounselingVo;
import com.grad.net.vo.MemberVo;
import com.grad.net.vo.NotiVo;



@Repository
public class CounselingDao {
	
	
	@Autowired
	private SqlSession sqlSession;
	
	
	public void insert(CounselingVo counselingVo) {
		sqlSession.insert("counseling.insert",counselingVo);
	}
	
	
	public List<CounselingVo> getcounselingList() {
		return sqlSession.selectList("counseling.getcounselingList");
	}
	
	public List<CounselingVo> getReplyList() {
		return sqlSession.selectList("counseling.getReplyList");
	}
	


}
