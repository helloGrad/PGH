package com.grad.net;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.grad.net.security.Auth;
import com.grad.net.service.AdminService;
import com.grad.net.vo.NotiVo;
import com.grad.net.vo.OrganzVo;
import com.grad.net.vo.ResrchAcrsltVo;






@Auth(role=Auth.Role.ADMIN) 
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;	
	
	@RequestMapping({"", "/main"})
	public String main(Model model){
		
		
		return "admin/main";
	}
	
	@RequestMapping("/list")
	public String registerOrganz() {
		
		return "admin/list";		
	}

	@RequestMapping("/organz")
	public String registerOrganz(
			@RequestParam String tabnm,Model model,OrganzVo organzVo, ResrchAcrsltVo resrchAcrsltVo) {

		
		model.addAttribute("OrganzVo", organzVo);
		model.addAttribute("ResrchAcrsltVo", resrchAcrsltVo);
		
		return "admin/list";		
	}
	
	
	@RequestMapping(value="/organz", method=RequestMethod.POST)
	public String upload(
			@ModelAttribute OrganzVo organzVo, @ModelAttribute ResrchAcrsltVo resrchAcrsltVo,
			@RequestParam String tabnm
			){
		
		System.out.println(tabnm);
		System.out.println(organzVo);
		System.out.println(resrchAcrsltVo);
		
		if(resrchAcrsltVo.getResrchText() == null) { //연구실입력인 경우 
			
			adminService.insertLab(organzVo);
			
		}
		
		if(organzVo.getOrgnzNm() == null) { // 연구실적입력인 경우 
			
			adminService.insertResrch(resrchAcrsltVo);
			
			
		}
		
		
		
		return "redirect:/admin/list";
	}
	
	
	@RequestMapping("/noti")
	public String registerNoti(@ModelAttribute NotiVo notiVo) {
		
		return "admin/list";		
	}
	
	

	
}
