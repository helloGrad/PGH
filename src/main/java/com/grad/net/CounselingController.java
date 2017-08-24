package com.grad.net;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.grad.net.security.Auth;
import com.grad.net.security.AuthUser;
import com.grad.net.service.CounselingService;
import com.grad.net.vo.CounselingVo;
import com.grad.net.vo.MemberVo;





@Controller
@RequestMapping("/counseling")
public class CounselingController {
	
	
	@Autowired
	CounselingService counselingService;
	
	
	/**
	 * 박가혜 2017-08-23
	 */
	
	@RequestMapping("/list")
	public String counselingList(Model model, @AuthUser MemberVo authUser) {

		List<CounselingVo> counselingList= counselingService.counselingList();
		List<CounselingVo> ReplyList= counselingService.getReplyList();
	
		model.addAttribute("authUser", authUser);
		model.addAttribute("counselingList", counselingList);
		model.addAttribute("replyList", ReplyList);
		
		

		return "/counseling/list";
	}
	
	/**
	 * 박가혜 2017-08-24
	 */
	
	
	@RequestMapping("/detail")
	@Auth(role = Auth.Role.USER)
	public String counselingDetail( Model model, @RequestParam("no") Long no,@AuthUser MemberVo authUser, @RequestParam("type") String type) {
		
		
		
		CounselingVo counselingPrnts = counselingService.counselingPrnts(no);
		List<CounselingVo> counselingReplyList = counselingService.counselingReplyDetail(no);
		
		//조횟수 
		//counselingService.findCoUpdate();

		model.addAttribute("authUser", authUser);
		model.addAttribute("counselingPrnts", counselingPrnts);
		model.addAttribute("counselingReplyList", counselingReplyList);
		model.addAttribute("type", type);
		

		

		
		return "/counseling/detail";
	}
	
	
	
	
	
	
	

}
