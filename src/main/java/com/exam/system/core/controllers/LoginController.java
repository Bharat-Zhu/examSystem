package com.exam.system.core.controllers;

import com.exam.system.core.entitys.User;
import com.exam.system.core.utils.LogUtils;
import com.exam.system.core.utils.MessageUtils;
import com.exam.system.core.utils.UserUtils;
import com.exam.system.modules.sys.services.MenuService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class LoginController extends BaseController {

    @Autowired
    private MenuService menuService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Object locale = session.getAttribute("org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE");
        if (locale == null) {
            locale = request.getLocale();
        }
        session.setAttribute("LOCALE", locale);
        return "login.action";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(User user, Map<String, Object> map) {
        Subject currentUser = SecurityUtils.getSubject();

        if (!currentUser.isAuthenticated()) {
            UsernamePasswordToken token = new UsernamePasswordToken(user.getId(), user.getPassword());

            token.setRememberMe(false);
            map.put("user", user);
            try {
                currentUser.login(token);
                LogUtils.log(this).info(user.getId() + " Authentication success.");
            } catch (UnknownAccountException e) {
                LogUtils.log(this).info(MessageUtils.getMessage("validation.constrains.login.ID.error.message"));
                map.put("loginErr", MessageUtils.getMessage("validation.constrains.login.ID.error.message"));
                return new ModelAndView("login.action");
            } catch (AuthenticationException e) {
                LogUtils.log(this).info(MessageUtils.getMessage("validation.constrains.login.error.message"));
                map.put("loginErr", MessageUtils.getMessage("validation.constrains.login.error.message"));
                return new ModelAndView("login.action");
            }
        }

        return new ModelAndView("redirect:home");
    }

    @RequestMapping("/home")
    public ModelAndView home() {
        UserUtils.getTreeMenusByCache();
        return new ModelAndView("home.page");
    }
}
