package com.grad.net;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.grad.net.service.NotiService;
import com.grad.net.vo.NotiVo;

@Controller
@RequestMapping("/noti")
public class NotiController {
	
	@Autowired
	NotiService notiService; 
	
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String notiList(Model model) {

		model.addAttribute("notiList", notiService.getNotiList());			
		return "/noti/list";
	}
	
	/*
	 * 박가혜 //연구실 모집공고 
	 */
	@RequestMapping("/detail")
	public String notiDetail(@RequestParam("no") int no,
			@RequestParam("tabnm") String tabnm, Model model) {
		
		System.out.println(no);
		System.out.println(tabnm);
		
		NotiVo notiVo = notiService.getNoti(no);
		
		System.out.println(notiVo);
		
		model.addAttribute("vo", notiService.getNoti(no));
		
		
		return "/noti/detail";
	}
	



}
