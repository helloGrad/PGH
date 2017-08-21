package com.grad.net.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.grad.net.dto.JSONResult;
import com.grad.net.service.MemberService;

/*
 * 정예린
 */	

@Controller("memberApiController")
@RequestMapping("/api")
public class MemberController {
	
	@Autowired
	MemberService memberService;

	
	@ResponseBody
	@RequestMapping("/checkemail")
	public JSONResult checkEmail(@RequestParam(value = "email", required = true, defaultValue = "") String IDEN) {

		boolean exist = memberService.existEamil(IDEN);
		//System.out.println("++++" + IDEN+ " "+JSONResult.success(exist));
		
		
		return JSONResult.success(exist);
	}

}
