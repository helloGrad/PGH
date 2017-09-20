package com.grad.net.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.grad.net.vo.StudyVo;




@Repository
public class StudyDao {
	
	@Autowired
	private SqlSession sqlSession;


	/**
	 * 박가혜 2017-09-20 
	 */
	public List<StudyVo> selectMajorList(String boardtype) {
		
		return sqlSession.selectList("study.selectMajorList", boardtype);
		
		
	}
	
	public List<StudyVo> selectBoardList(Map<String, Object> map){
		
		
		
		
		return sqlSession.selectList("study.selectBoardList", map);		
		
		
	}

}
