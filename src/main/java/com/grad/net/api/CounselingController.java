package com.grad.net.api;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.grad.net.dto.JSONResult;
import com.grad.net.security.AuthUser;
import com.grad.net.service.CounselingService;
import com.grad.net.service.MemberService;
import com.grad.net.vo.CounselingVo;
import com.grad.net.vo.MemberVo;
import com.grad.net.vo.NotiVo;




@Controller("counselingAPIController")
@RequestMapping("/counseling/api")
public class CounselingController {
	
	
	@Autowired
	CounselingService counselingService;
	
	
	/**
	 * 박가혜
	 */
	@ResponseBody
	@RequestMapping(value = "/write", method = RequestMethod.POST) // 질문글 쓰기(원글쓰기)
	public JSONResult notiLabList(Model model, @RequestBody CounselingVo counselingVo, @AuthUser MemberVo authUser) {

		counselingVo.setMbNo(authUser.getMbNo());

		counselingService.write(counselingVo);

		return JSONResult.success(counselingVo);
	}
	
	
	
	

}
