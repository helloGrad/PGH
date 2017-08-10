package com.grad.net.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.grad.net.vo.MemberVo;





public class AuthInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		//1. handler 종류
		if(handler instanceof HandlerMethod == false ){ //디폴트 핸들러이면 실행시킴
			
			return true;
		}
		
		
		// 2. @auth가 붙어있는 지 확인
		Auth auth = ((HandlerMethod)handler).getMethodAnnotation(Auth.class);
		
		//3. @auth가 붙어있지 않으면(인증이 필요없으면) 
		if(auth == null){
			
			// 4. 클래스에 붙어있는지  확인
			
			auth = ((HandlerMethod)handler).getMethod().getDeclaringClass().getAnnotation(Auth.class);
			if(auth == null){
				
				return true;
			}
			
		}
		
		
		
		//5. 접근제어 필요
		
		HttpSession session = request.getSession();
		
		if(session == null){
			
			response.sendRedirect(request.getContextPath()+"/user/login");
			return false;
		}
		
		
		
		if(session.getAttribute("authUser") == null){
			
			response.sendRedirect(request.getContextPath()+"/user/login");
			return false;
			
		}
		
		// 5. 인증된 사용자 
		
		// 6. 롤체크 
		Auth.Role role = auth.role();
		MemberVo vo = (MemberVo) session.getAttribute("authUser");
		
		
		
		
		//System.out.println(role);
		//System.out.println(vo.getRole());
		
		if(role == Auth.Role.ADMIN && vo.getMB_DSTNCT().equals("관리자") == false ){
		
			response.sendRedirect(request.getContextPath()+"/orgnz");
			return false;
		}
	
		
		
		
		return true;
	}
	
	
	
	

}