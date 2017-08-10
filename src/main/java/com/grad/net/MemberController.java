package com.grad.net;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.grad.net.security.Auth;
import com.grad.net.security.AuthUser;
import com.grad.net.service.MemberService;
import com.grad.net.service.CodeService;
import com.grad.net.vo.CodeVo;
import com.grad.net.vo.MemberVo;





@Controller
@RequestMapping("/user")
public class MemberController {
	
	
	@Autowired
	private MemberService MemberService;
	
	@Autowired
	private CodeService CodeService;
	

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login( Model model) {
		
		
		return "Login";
	}
	
	
	
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		
	
		
		return "index";
	}
	
	@Auth(role=Auth.Role.USER)
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(Locale locale, Model model) {
		
	
		
		
		return "mypage";
	}
	
	@Auth(role=Auth.Role.USER)
	@RequestMapping(value = "/usermadeinfor", method = RequestMethod.GET)
	public String usermadeinfor(Locale locale, Model model, @AuthUser MemberVo authUser) {
		
	
		//System.out.println(authUser.getIDEN());
		//System.out.println(authUser.getMB_NO());
		
		List<MemberVo> MemberVo = MemberService.usermadeinfor(authUser);
		
		List<CodeVo> CodeVo = CodeService.get();
		model.addAttribute("Codelist", CodeVo);
		
		
		System.out.println(CodeVo.size());
		
		

		//model.addAttribute("informationlist", MemberVo);
		
		
		
		return "usermadeinfor";
	}
	
	
	@Auth(role=Auth.Role.USER)
	@RequestMapping(value = "/usermadeinfor", method = RequestMethod.POST)
	public String modify(@ModelAttribute MemberVo userVo) {

		

		return "redirect:/user/usermadeinfor";
	}
	
	
	
	
	
	@RequestMapping(value = "/index", method = RequestMethod.POST)
	public String index(@RequestParam(value="birth", required= true, defaultValue="") String BIRDT, 
			@RequestParam(value="email", required= true, defaultValue="") String IDEN ,
			@RequestParam(value="nickname", required= true, defaultValue="") String NKNM,
			@RequestParam(value="age", required= true, defaultValue="") String AGRG,
			@RequestParam(value="name", required= true, defaultValue="") String MB_NM,
			@RequestParam(value="gender", required= true, defaultValue="") String SEX,
			@RequestParam(value="token", required= true, defaultValue="") String SNS_TKN_VALUE,
			HttpServletRequest request, HttpServletResponse response){
		
		
		MemberVo MemberVo = new MemberVo();
		
		MemberVo.setSNS_TKN_VALUE(SNS_TKN_VALUE);
		MemberVo.setBIRDT(BIRDT); //안넣음
		MemberVo.setIDEN(IDEN);
		MemberVo.setNKNM(NKNM);
		MemberVo.setAGRG(AGRG);
		MemberVo.setMB_NM(MB_NM);
		MemberVo.setSEX(SEX);
		
		
		
		
		//가입된 사람인지 확인 필요 
		
		boolean exist=MemberService.existEmail(MemberVo.getIDEN());
		
		if(exist != true) {
			
			MemberService.register(MemberVo);	
		}
		
		HttpSession session = request.getSession(true);
		
		session.setAttribute("authUser", MemberVo);
		
		return "redirect:/user/login";
	}
	
	
	
}