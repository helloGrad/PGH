package com.grad.net.security;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.TYPE }) //??ê²Ÿì?? •
@Retention(RetentionPolicy.RUNTIME) //ì§??†ê¸°ê°„?„ ì§?? • 
public @interface Auth {
	
	
	//String role() default "USER"; // value?¼ê³? ?•˜ë©? ?´ë¦„ì„ ì§?? •?•´ì£¼ì? ?•Š?•„?„ ?“¤?–´ê°?  String[] value() default "USER"; @Auth({"ADMIN", "USER"}) ?—¬?Ÿ¬ê°? ?„£?„?ˆ˜?„ ?ˆ?Œ 
	Role role() default Role.USER;
	//Role[] value() default Role.USER;
	public enum Role {ADMIN, USER }
	
}
