package com.grad.net.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grad.net.repository.OrganzDao;
import com.grad.net.vo.OrganzVo;
import com.grad.net.vo.ResrchAcrsltVo;

/*
 * 허주한
 */

@Service
public class OrganzService {
	
	@Autowired
	OrganzDao organzDao;
	
	public List<OrganzVo> getOrganzList(){
		return organzDao.getOrganzList();
	}
	
	public  OrganzVo getOrganz(int no) {
		return organzDao.getByNo(no);
	}

	public List<ResrchAcrsltVo> getResrchAcrsltList(int no) {
		return organzDao.getResrchAcrsltList(no);
	}
	
	public List<ResrchAcrsltVo> getResrchAcrsltFetchList(int orgNo, String type) {
		Map<String, Object> map = new HashMap<String, Object>() ;
		map.put("orgNo", orgNo);
		map.put("type", type);
		return organzDao.getResrchAcrsltFecthList(map);	
	}
	
	public int countResrchAcrslt(int orgNo, String type) {
		Map<String, Object> map = new HashMap<String, Object>() ;
		map.put("orgNo", orgNo);
		map.put("type", type);
		
		return organzDao.countResrchAcrslt(map);
	}
	
	
	/*
	 * 2017-09-27 정예린 검색 결과 번호로 기관 가져오기
	 */
	public OrganzVo getOrganzByNo(int no) {	
		return organzDao.getOrganzByNo(no);
	}

}
