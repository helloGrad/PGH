package com.grad.net;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.grad.net.security.Auth;




@Auth(role=Auth.Role.ADMIN) // @auth가 여기 달리게 변경 @Auth(role="ADMIN") 권한도 줄수 있게 
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	//@Autowired
	//private AdminService AdminService;
	
	
	@RequestMapping({"", "/main"})
	public String main(Model model
			){
		
	
		
		
		
		return "admin/main";
	}

	

	
}
