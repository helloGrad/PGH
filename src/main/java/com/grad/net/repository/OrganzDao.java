package com.grad.net.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.grad.net.vo.OrganzVo;
import com.grad.net.vo.ResrchAcrsltVo;

@Repository
public class OrganzDao {
	
	@Autowired
	SqlSession sqlSession;
	
	
	public List<OrganzVo> getOrganzList(){		
		return sqlSession.selectList("organz.selectOrganzList");
	}


	public OrganzVo getByNo(int no) {
		OrganzVo vo = sqlSession.selectOne("organz.getByNo", no);
		return vo;
	}


	public List<ResrchAcrsltVo> getResrchAcrsltList(int no) {
		return sqlSession.selectList("organz.getResrchAcrsltList",no);
	}


	public List<ResrchAcrsltVo> getResrchAcrsltFecthList(Map<String, Object> map) {		
		return sqlSession.selectList("organz.getResrchAcrsltFetchList", map);
	}
	
}
