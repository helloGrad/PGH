package com.grad.net.security;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.TYPE }) //??κ²μ?? 
@Retention(RetentionPolicy.RUNTIME) //μ§??κΈ°κ°? μ§??  
public @interface Auth {
	
	
	//String role() default "USER"; // value?Όκ³? ?λ©? ?΄λ¦μ μ§?? ?΄μ£Όμ? ??? ?€?΄κ°?  String[] value() default "USER"; @Auth({"ADMIN", "USER"}) ?¬?¬κ°? ?£??? ?? 
	Role role() default Role.USER;
	//Role[] value() default Role.USER;
	public enum Role {ADMIN, USER }
	
}
