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
	private MemberService MemberService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		
		String IDEN = request.getParameter("IDEN");
		String PW=request.getParameter("PW");
	
		
		
		MemberVo MemberVo=  MemberService.getUser(IDEN, PW);
		
		if( MemberVo == null){
			
			
			response.sendRedirect(request.getContextPath()+"/login?result=fail");
			return false;
		}
		

		
		
		
		HttpSession session = request.getSession(true);
		
		session.setAttribute("authUser", MemberVo);
		response.sendRedirect(request.getContextPath()+"/orgnz");
		
		return false;
	}
	

	

}
