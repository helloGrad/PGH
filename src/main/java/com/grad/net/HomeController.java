package com.grad.net;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.grad.net.security.Auth;
import com.grad.net.security.AuthUser;
import com.grad.net.service.CodeService;
import com.grad.net.service.CounselingService;
import com.grad.net.service.MemberService;
import com.grad.net.service.NotiService;
import com.grad.net.vo.CounselingVo;
import com.grad.net.vo.MemberVo;

import net.sf.json.JSONArray;


@Controller
public class HomeController {
	
	
	@Autowired
	CounselingService counselingService;
	

	@Autowired
	NotiService notiService;

	@Autowired
	CodeService codeService;

	@Autowired
	MemberService memberService;
	/*
	 * 정예린 1027-09-13 메인 합치기 
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home( Model model, MemberVo memberVo) {	
		model.addAttribute("MemberVo", memberVo);		
		return "main";
	}

	/*
	 * 정예린 1027-09-13 메인 합치기
	 */
	
//	//@Auth(role = Auth.Role.USER)
//	@RequestMapping(value = "/loginmain", method = RequestMethod.GET)
//	public String home2( Model model, MemberVo memberVo,@AuthUser MemberVo authUser) {	
//		
//		
//		
//		return "loginmain";
//	}

	/*
	 * 정예린 2017-09-25
	 */
	
	@SuppressWarnings("static-access")
	@RequestMapping(value = "/loginmain", method = RequestMethod.GET)
	public String loginmain(Model model, @AuthUser MemberVo authUser) {
		
		JSONArray jsonArray = new JSONArray();
		model.addAttribute("codeList", codeService.getStudyList());
		model.addAttribute("gradList", notiService.getGradNotiList());
		model.addAttribute("labList", notiService.getLabNotiList());
		model.addAttribute("labCodeList", notiService.getLabCodeList());
		//model.addAttribute("totalcount", notiService.getNotiCount()+교육/모임갯수);
		model.addAttribute("notiCount", notiService.getNotiCount());
		//교육/모임 갯수 추후에 추가
		
		if (authUser != null) {
			model.addAttribute("scrapList", memberService.getScrapList(authUser.getMbNo()));
			model.addAttribute("scrapList", jsonArray.fromObject(memberService.getScrapList(authUser.getMbNo())));
		}
		
		model.addAttribute("gradList", jsonArray.fromObject(notiService.getGradNotiList()));
		model.addAttribute("labList", jsonArray.fromObject(notiService.getLabNotiList()));
		return "loginmain";
	}
	
	
	
}
