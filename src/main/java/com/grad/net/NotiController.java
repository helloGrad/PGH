package com.grad.net;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.grad.net.service.NotiService;

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
	
	@RequestMapping("/detail")
	public String notiDetail(@RequestParam("no") int no,
			@RequestParam("tabnm") String tabnm, Model model) {
		
		//tabnm=연구실/대학원
		model.addAttribute("vo", notiService.getNoti(no));
		
		return "/noti/detail";
	}

}
