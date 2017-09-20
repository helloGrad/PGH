package com.grad.net.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.grad.net.repository.StudyDao;
import com.grad.net.vo.StudyVo;


@Service
public class StudyService {
	

	@Autowired 
	StudyDao studyDao;
	
	
	
	/*
	 * 박가혜 2017-09-20 학문별 전체 연구분야 리스트 가지고 오기 
	 */	
	public List<StudyVo> getMajorList(String boardtype){
		
		return studyDao.selectMajorList(boardtype);		
	}
	
	
	public List<StudyVo> getBoardList(List<Long> intMajorList, String boardtype){
		
		String type = null;
		
		if(boardtype == "공학") {
			
			type="공학게시판";
		}
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("intMajorList", intMajorList);
		map.put("type", type);
		
		
		return studyDao.selectBoardList(map);		
	}

}
