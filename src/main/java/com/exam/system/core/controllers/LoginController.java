package com.exam.system.core.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Object locale = session.getAttribute("org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE");
        session.setAttribute("LOCALE", locale);
        return "loginPage";
	}
}
