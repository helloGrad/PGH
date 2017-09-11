package com.grad.net;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.grad.net.vo.MemberVo;


@Controller
public class HomeController {
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home( Model model, MemberVo memberVo) {	
		model.addAttribute("MemberVo", memberVo);		
		return "study/home";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String home1(Locale locale, Model model, @RequestBody MemberVo memberVo) {
		System.out.println(memberVo.getEmail());		
		
		
		
		
		return "study/home";
	}
	

	@RequestMapping(value = "/study/notice", method = RequestMethod.GET)
	public String studyNotice( Model model, MemberVo memberVo) {	
		model.addAttribute("MemberVo", memberVo);		
		return "study/notice";
	}

	
	@RequestMapping(value = "/study/discussion", method = RequestMethod.GET)
	public String studyDiscussion( Model model, MemberVo memberVo) {	
		model.addAttribute("MemberVo", memberVo);		
		return "study/discussion";
	}
	
	
	@RequestMapping(value = "/study/research", method = RequestMethod.GET)
	public String studyResearch( Model model, MemberVo memberVo) {	
		model.addAttribute("MemberVo", memberVo);		
		return "study/research";
	}
	

	@RequestMapping(value = "/study/lab", method = RequestMethod.GET)
	public String studyLab( Model model, MemberVo memberVo) {	
		model.addAttribute("MemberVo", memberVo);		
		return "study/lab";
	}
	
	
}
