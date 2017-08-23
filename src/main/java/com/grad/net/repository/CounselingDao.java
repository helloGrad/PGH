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
	
	/**
	 * 박가혜 2017-08-23
	 */
	public void insert(CounselingVo counselingVo) {
		sqlSession.insert("counseling.insert",counselingVo);
	}
	
	/**
	 * 박가혜 2017-08-23
	 */
	public List<CounselingVo> getcounselingList() {
		return sqlSession.selectList("counseling.getcounselingList");
	}
	/**
	 * 박가혜 2017-08-23
	 */
	public List<CounselingVo> getReplyList() {
		return sqlSession.selectList("counseling.getReplyList");
	}
	


}
