package com.grad.net.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.grad.net.vo.NotiVo;
import com.grad.net.vo.OrganzVo;
import com.grad.net.vo.StudyVo;



@Repository
public class NotiDao {
	
	@Autowired
	private SqlSession sqlSession;

	/**
	 * 허규준
	 */
	public List<NotiVo> getNotiList(String type) {
		return sqlSession.selectList("noti.getNotiList",type);
	}

	

	/**
	 * 허규준
	 */
	public List<NotiVo> getNotiListByPage(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("noti.getNotiListByPage", map);
	}

	
	public NotiVo getByNo(Map<String, Object> map) {
		NotiVo vo = new NotiVo();
		
		/*
		 * 정예린 
		 */	
		if(map.get("tabnm").equals("대학원")) {
			vo = sqlSession.selectOne("noti.getGradByNo", map);
			//System.out.println("vo");
		}
		/*
		 * 박가혜 정예린
		 */
		else if(map.get("tabnm").equals("연구실")) {
			vo = sqlSession.selectOne("noti.getLabByNo2", map);
		}
		
		return vo;
	}

	
	
	/**
	 * 정예린 대학원 모집공고 가져오기 2017-09-18
	 */
	public List<StudyVo> getGradNotiList() {
		return sqlSession.selectList("noti.getGradNotiList");
	}
	
	public List<StudyVo> getLabNotiList() {
		return sqlSession.selectList("noti.getLabNotiList");
	}

	public List<StudyVo> getLabCodeList() {
		return sqlSession.selectList("noti.getLabCodeList");
	}

	public List<StudyVo> getLabCodeList(int no) {
		return sqlSession.selectList("noti.getLabCodeListByNo", no);
	}
	
	
/*
 * 2017-09-26 정예린 
 */
	public int getNotiCount() {
		return sqlSession.selectOne("noti.getNotiCount");
	}
	
	
	

}
