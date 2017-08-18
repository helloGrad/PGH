package com.grad.net.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.grad.net.vo.NotiVo;
import com.grad.net.vo.OrganzVo;



@Repository
public class NotiDao {
	
	@Autowired
	private SqlSession sqlSession;

	public List<NotiVo> getNotiList() {
		return sqlSession.selectList("noti.selectNotiList");
	}

	public NotiVo getByNo(int no) {
		NotiVo vo = sqlSession.selectOne("noti.getByNo", no);
		return vo;
	}

}
