package com.grad.net.repository;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.grad.net.vo.OrganzVo;
import com.grad.net.vo.ResrchAcrsltVo;



@Repository
public class AdminDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	/*
	 * 박가혜
	 */
	public void insertLab(OrganzVo organzVo) {
		sqlSession.insert("organz.insertLab", organzVo);
	}

	/*
	 * 박가혜
	 */
	public void insertResrch(ResrchAcrsltVo resrchAcrsltVo) {
		sqlSession.insert("organz.insertResrch", resrchAcrsltVo);
	}
	
	/*
	 * 박가혜
	 */
	public void insertNoti(Map<String, Object> map) {
		sqlSession.insert("noti.insertNoti", map);		
	}
	
	
}
