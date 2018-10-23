package com.exam.system.core.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.exam.system.core.entitys.User;

@Controller
public class LoginController {
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
        return "loginPage";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, User user) {
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
            } catch(UnknownAccountException e) {
				System.out.println("登录失败：");
			} catch(AuthenticationException e) {
				System.out.println("登录失败：");
			} catch (Exception e) {
				System.out.println("登录失败：");
			}
        }
        
        return new ModelAndView("redirect:home");
	}
	
	@RequestMapping("/home")
	public String home() {
		return "home.page";
	}
}
