package com.grad.net.controller.api;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.grad.net.service.MemberService;




@Controller("userApiController") 
@RequestMapping("/user/api")
public class MemberController {
	
	
	@Autowired
	MemberService MemberService;
	
	@ResponseBody
	@RequestMapping("/checkemail")
	public Map<String, Object> checkEmail(@RequestParam(value="email",required=true, defaultValue="") String id){
		
		
		
		boolean exist=MemberService.existEmail(id);
		
		
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("result", "success");
		map.put("data", exist);
		
		return map;
	}
	
	

}
