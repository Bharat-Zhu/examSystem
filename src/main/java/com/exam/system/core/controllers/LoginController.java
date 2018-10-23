package com.exam.system.core.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.exam.system.core.entitys.User;

@Controller
public class LoginController {
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
        return "loginPage";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpServletRequest request, User user) {
        HttpSession session = request.getSession();
        Object locale = session.getAttribute("org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE");
        session.setAttribute("LOCALE", locale);
        System.out.println(user.getId() + "<---->" + user.getPassword());
        
        Subject currentUser = SecurityUtils.getSubject();
        
        if (!currentUser.isAuthenticated()) {
        	UsernamePasswordToken token = new UsernamePasswordToken(user.getId(), user.getPassword());
        	
        	token.setRememberMe(false);
        	
        	try {
                currentUser.login(token);
            } 
            catch (Exception e) {
            	throw e;
            }
        }
        
        return "home.page";
	}
}
