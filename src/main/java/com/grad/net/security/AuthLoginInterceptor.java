package com.grad.net.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


import com.grad.net.service.MemberService;
import com.grad.net.vo.MemberVo;


public class AuthLoginInterceptor extends HandlerInterceptorAdapter {	

	@Autowired
	private MemberService memberService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {		
		
		String iden = request.getParameter("iden");
		String pw=request.getParameter("pw");		
		
		System.out.println(iden+" "+pw);
		
		MemberVo memberVo=  memberService.getUser(iden, pw);
		
		if( memberVo == null){
			
//			String accept = request.getHeader("accept");			//성공시 클라이언트에 응답한 문구를 정해서 넘겨줌
//			if(accept.matches(".*application/json.*")){
//				//잭슨 라이브러리를 사용하여 메세지컨버터로 json형태로 응답
//				//response.getOutputStream().write("{'result':'fail', 'message':'fail', 'data':{no:0}}");
//			} else {
//				response.sendRedirect(request.getContextPath()+"/login?result=fail");
//			}
			
			System.out.println(request.getContextPath());
			response.sendRedirect(request.getContextPath()+"/user/login?result=fail");
			return false;
		}		
		
		HttpSession session = request.getSession(true);
		
		session.setAttribute("authUser", memberVo);
		response.sendRedirect(request.getContextPath()+"/");
		
		return false;
	}	

}
