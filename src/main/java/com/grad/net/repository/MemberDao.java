package com.grad.net.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.grad.net.vo.CodeVo;
import com.grad.net.vo.MemberVo;








@Repository
public class MemberDao {
	
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private DataSource datasource;
	
	

	public MemberVo get(String id){
		
		
		
		return sqlSession.selectOne("Member.getByEmail", id);
		
	
	}
	
	public MemberVo get(String IDEN,String PW ) throws Exception { //로그인
		
		Map<String, Object> map= new HashMap<String, Object>(); //vo가 없을경우 map을 사용
		
		map.put("IDEN", IDEN);
		map.put("PW", PW);
		
		
		MemberVo MemberVo = sqlSession.selectOne("Member.getByNo1", map);
				
		
		return MemberVo;
		
	}
	
	
	public boolean insert(MemberVo MemberVo) {
		
		
		int count = sqlSession.insert("Member.naverinsert",MemberVo);
		
		return count ==1;
	}
	
	
	
	public List<CodeVo> get(MemberVo MemberVo){
		
	 
	
		Long MB_NO= MemberVo.getMB_NO();
		
		return sqlSession.selectList("Member.getByCode", MB_NO);
		

	
	}
	
	public void insertinformation(Long MB_NO, String information) {
		
		Map<String, Object> map= new HashMap<String, Object>(); 
		
		map.put("MB_NO", MB_NO);
		map.put("information", information);
		
		sqlSession.insert("Member.insertinformation",map);
		
		
	}
	
	
	
	
	
	public boolean inforupdate(Long MB_NO,String infor) { //보류 
		
		Map<String, Object> map= new HashMap<String, Object>(); 
		
		map.put("MB_NO", MB_NO);
		map.put("information", infor);
		
		
		
		int count = sqlSession.update("Member.inforupdate",map);
		
		return count ==1;
	}
	
	public void infordelete(Long MB_NO){
		
		 sqlSession.delete("Member.infordelete",MB_NO);
		
	
		
	}
	
	

}
