package com.grad.net.api;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.grad.net.dto.JSONResult;
import com.grad.net.service.CodeService;
import com.grad.net.service.MemberService;
import com.grad.net.service.OrganzService;
import com.grad.net.vo.CodeVo;
import com.grad.net.vo.MemberVo;
import com.grad.net.vo.OrganzVo;

/*
 * 정예린
 */	

@Controller("memberApiController")
@RequestMapping("/api")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	
	@Autowired
	CodeService codeService;

	
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
	
	
	
	/*
	 * 허주한 2017/09/02
	 */
	@ResponseBody
	@RequestMapping(value = "/checklogin" , method = RequestMethod.POST)
	public JSONResult getList(@RequestParam("iden") String iden, @RequestParam("pw") String pw) {

		try {
			if(memberService.getUser(iden, pw)==null) {
				return JSONResult.success(false);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return JSONResult.success(true);

	}
	
	
	@ResponseBody
	@RequestMapping(value = "/setsession" , method=RequestMethod.POST)
	public JSONResult setSession(HttpServletRequest request, HttpServletResponse response,@RequestParam("iden") String iden, @RequestParam("pw") String pw) {

		
		System.out.println(iden+" "+pw);
		MemberVo memberVo = null;
		try {
			memberVo = memberService.getUser(iden, pw);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		HttpSession session = request.getSession(true);
		
		session.setAttribute("authUser", memberVo);
//		response.sendRedirect(request.getContextPath()+"/");
		System.out.println("세션등록");
		

	
		
		return JSONResult.success(memberVo);

	}
	
	
	/**
	 * 박가혜 2017-09-08 메인페이지 연구분야리스트 보여주기 
	 */

	@ResponseBody
	@RequestMapping("/majorlist")
	public JSONResult majorlist(@RequestParam("type") String type) {

		//System.out.println(type);
		List<CodeVo> organzList = codeService.getMajorList(type);
		//System.out.println(organzList);

		return JSONResult.success(organzList);
	}
	
	/*
	 * 정예린 2017-09-19 스크랩
	 */
	@ResponseBody
	@RequestMapping(value = "/addscrap", method = RequestMethod.GET)
	public JSONResult scrapInsert(@RequestParam("type") String type,
			@RequestParam("id") String id,
			@RequestParam("user") String user) {

		System.out.println(type+" "+id+" "+user);
		boolean success = memberService.insertScrap(type,id,user);

		return JSONResult.success(success);
	}
	
	/*
	 * 정예린 2017-09-19 스크랩
	 */
	@ResponseBody
	@RequestMapping(value = "/deletescrap", method = RequestMethod.GET)
	public JSONResult scrapDelete(@RequestParam("type") String type,
			@RequestParam("id") String id,
			@RequestParam("user") String user) {

		boolean success = memberService.deleteScrap(type,id,user);
		return JSONResult.success(success);
	}


}
