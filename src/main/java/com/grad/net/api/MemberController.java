package com.grad.net.api;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.grad.net.dto.JSONResult;
import com.grad.net.service.MemberService;
import com.grad.net.vo.MemberVo;

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
	
	/**
	 * 박가혜 2017-08-31 맞춤정보 제안 페이지
	 */

	@ResponseBody
	@RequestMapping("/snslogin")
	public JSONResult snslogin(@RequestParam(value = "name", required = true, defaultValue = "") String mbNm,
			@RequestParam(value = "email", required = true, defaultValue = "") String iden,
			@RequestParam(value = "gender", required = true, defaultValue = "") String sex,
			@RequestParam(value = "birthday", required = true, defaultValue = "") String birdt,
			@RequestParam(value = "token", required = true, defaultValue = "") String snsTknValue,
			@RequestParam(value = "age", required = true, defaultValue = "") String agrg,
			@RequestParam(value = "nickname", required = true, defaultValue = "") String nknm,
			@RequestParam(value = "sns", required = true, defaultValue = "") String snsnm, HttpServletRequest request,
			HttpServletResponse response) {

	
		MemberVo memberVo = new MemberVo();

		memberVo.setMbNm(mbNm);
		memberVo.setIden(iden);
		memberVo.setSex(sex);
		memberVo.setBirdt(birdt);
		memberVo.setSnsTknValue(snsTknValue);
		;
		if (snsnm.equals("fb") || snsnm.equals("google")) {
			memberVo.setNknm(mbNm);
			;
		} else if (snsnm.equals("naver")) {
			memberVo.setNknm(nknm);
			;
		}
		memberVo.setAgrg(agrg);
		;

		//System.out.println("+++" + memberVo);

		boolean exist = memberService.existEamil(memberVo.getIden());

		System.out.println("존재하는 회원입니까? " + exist);

		if (exist != true) {
			System.out.println(snsnm);
			memberService.snslogin(memberVo, snsnm); //회원가입 
		}

		HttpSession session = request.getSession(true);
		
		MemberVo getmember=  memberService.getUser(iden);
		session.setAttribute("authUser", getmember);
	

		
		return JSONResult.success(getmember);
	}
	
	
	
	

}
