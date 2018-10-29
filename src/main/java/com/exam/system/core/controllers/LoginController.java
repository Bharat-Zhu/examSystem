package com.exam.system.core.controllers;

import java.util.Map;

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
import com.exam.system.core.utils.LogUtils;
import com.exam.system.core.utils.MessageUtils;

@Controller
public class LoginController extends BaseController {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Object locale = session.getAttribute("org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE");
        session.setAttribute("LOCALE", locale);
        return "loginPage";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login( User user, Map<String, Object> map) {
        Subject currentUser = SecurityUtils.getSubject();

        if (!currentUser.isAuthenticated()) {
            UsernamePasswordToken token = new UsernamePasswordToken(user.getId(), user.getPassword());

            token.setRememberMe(false);
            map.put("user", user);
            try {
                currentUser.login(token);
                LogUtils.log(getClass()).info(user.getName() + "Authentication success.");
            } catch (UnknownAccountException e) {
                LogUtils.log(getClass()).info(MessageUtils.getMessage("validation.constrains.login.ID.error.message"));
                map.put("loginErr", MessageUtils.getMessage("validation.constrains.login.ID.error.message"));
                return new ModelAndView("loginPage");
            } catch (AuthenticationException e) {
                LogUtils.log(getClass()).info(MessageUtils.getMessage("validation.constrains.login.error.message"));
                map.put("loginErr", MessageUtils.getMessage("validation.constrains.login.error.message"));
                return new ModelAndView("loginPage");
            }
        }

        return new ModelAndView("redirect:home");
    }

    @RequestMapping("/home")
    public String home() {
        return "home.page";
    }
}
