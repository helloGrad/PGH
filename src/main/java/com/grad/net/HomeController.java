package com.grad.net;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.grad.net.dto.JSONResult;
import com.grad.net.vo.MemberVo;



/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, MemberVo MemberVo) {
		
		
		model.addAttribute("MemberVo", MemberVo);

		
		
		
		return "home";
	}
	
	

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String home1(Locale locale, Model model, @RequestBody MemberVo MemberVo) {
		
		
		System.out.println(MemberVo.getEMAIL());
		
		
		
		return "home";
	}
	
	
	@RequestMapping(value = "/orgnz", method = RequestMethod.GET)
	public String orgnz(Locale locale, Model model, MemberVo MemberVo) {
		
		
		model.addAttribute("MemberVo", MemberVo);

		
		
		
		return "orgnz/list";
	}
	
	
	@RequestMapping(value = "/orgnz/view", method = RequestMethod.GET)
	public String orgnzview(Locale locale, Model model, MemberVo MemberVo) {
		
		
		model.addAttribute("MemberVo", MemberVo);

		
		
		
		return "orgnz/view";
	}
	

	
	
}
