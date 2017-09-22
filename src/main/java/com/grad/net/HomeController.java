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
import com.grad.net.service.CounselingService;
import com.grad.net.vo.CounselingVo;
import com.grad.net.vo.MemberVo;


@Controller
public class HomeController {
	
	
	@Autowired
	CounselingService counselingService;
	
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
	
	//@Auth(role = Auth.Role.USER)
	@RequestMapping(value = "/loginmain", method = RequestMethod.GET)
	public String home2( Model model, MemberVo memberVo,@AuthUser MemberVo authUser) {	
		
		
		
		return "loginmain";
	}

	
	
	
	
}
