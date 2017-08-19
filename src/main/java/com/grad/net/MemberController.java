package com.grad.net;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.grad.net.security.Auth;
import com.grad.net.security.AuthUser;
import com.grad.net.service.CodeService;
import com.grad.net.service.MemberService;
import com.grad.net.vo.CodeVo;
import com.grad.net.vo.MemberVo;

@Controller
@RequestMapping("/user")
public class MemberController {

	@Autowired
	MemberService memberService;

	@Autowired
	CodeService codeService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {

		//System.out.println("login main");
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String register(@ModelAttribute MemberVo memberVo) {

		//System.out.println(memberVo.getEmail() + " " + memberVo.getPw() + " " + memberVo.getNknm());
		memberService.register(memberVo);

		return "redirect:/user/login";
	}

	/////////////////////////////////////// snslogin//////////////////////////////////////////

	@RequestMapping(value = "/snslogin", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		System.out.println("snslogin naver get");
		return "snslogin";
	}

	@RequestMapping(value = "/snslogin", method = RequestMethod.POST)
	public String snslogin(@RequestParam(value = "name", required = true, defaultValue = "") String mbNm,
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

	//	System.out.println("+++" + memberVo);

		boolean exist = memberService.checkMember(memberVo);

		System.out.println("존재하는 회원입니까? " + exist);

		if (exist != true) {
			//System.out.println(snsnm);
			memberService.snslogin(memberVo, snsnm);
		}

		HttpSession session = request.getSession(true);
		session.setAttribute("authUser", memberVo);
		return "redirect:/user/login";
	}

	/////////////////////////////// mypage 세션 확인 ///////////////////////////////////

	
	
	@Auth(role = Auth.Role.USER)
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(Locale locale, Model model) {
		
		
		return "mypage";
	}

	////////////////////////////// 맞춤정보/////////////////////////////////
	
	/*
	 * 박가혜
	 */

	@Auth(role = Auth.Role.USER)
	@RequestMapping(value = "/mbinfo", method = RequestMethod.GET)
	public String mbinfo(Locale locale, Model model, @AuthUser MemberVo authUser) {

		System.out.println("get : " + authUser.getIden());
		System.out.println("get : " + authUser.getMbNo());

		List<CodeVo> userCodeVo = memberService.getMbinfoList(authUser);
		List<CodeVo> codeVo = codeService.getCodeList();
		model.addAttribute("Codelist", codeVo);
		model.addAttribute("informationlist", userCodeVo);

		return "mbinfo";
	}

	@Auth(role = Auth.Role.USER)
	@RequestMapping(value = "/mbinfo", method = RequestMethod.POST)
	public String mbinfo(HttpServletRequest request, @AuthUser MemberVo authUser,
			@RequestParam(value = "cnt", required = true, defaultValue = "0") int cnt) {

		Long mbNo = authUser.getMbNo();
		List<String> information = new ArrayList<String>();

		// System.out.println("사용자 번호 ; "+authUser.getMbNo());
		// System.out.println("===cnt : "+cnt);

		for (int j = 1; j <= cnt; j++) {
			for (int i = 0; i < request.getParameterValues("ch" + String.valueOf(j)).length; i++) {
				information.add(request.getParameterValues("ch" + String.valueOf(j))[i]);
			}
		}

		memberService.registerMbinfo(mbNo, information);
		return "redirect:/user/mbinfo";
	}

	@RequestMapping(value = "/mbinfo/modify", method = RequestMethod.POST)
	public String mbinfoModifiy(@AuthUser MemberVo authUser,
			@RequestParam(value = "info", required = true, defaultValue = "") String[] info) {

		memberService.updateMbinfo(authUser.getMbNo(), info);
		return "redirect:/user/mbinfo";
	}
}
