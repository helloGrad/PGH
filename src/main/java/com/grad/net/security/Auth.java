package com.grad.net.security;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.TYPE }) //??겟�??��
@Retention(RetentionPolicy.RUNTIME) //�??��기간?�� �??�� 
public @interface Auth {
	
	
	//String role() default "USER"; // value?���? ?���? ?��름을 �??��?��주�? ?��?��?�� ?��?���?  String[] value() default "USER"; @Auth({"ADMIN", "USER"}) ?��?���? ?��?��?��?�� ?��?�� 
	Role role() default Role.USER;
	//Role[] value() default Role.USER;
	public enum Role {ADMIN, USER }
	
}
