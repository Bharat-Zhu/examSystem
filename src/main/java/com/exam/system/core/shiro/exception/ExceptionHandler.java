package com.exam.system.core.shiro.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.UnauthenticatedException;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class ExceptionHandler implements HandlerExceptionResolver {

    @Override
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
        ModelAndView mv = new ModelAndView();
        if (ex instanceof UnauthenticatedException) {
            mv.addObject("exception", ex);
            mv.setViewName("error/403");
        } else if (ex instanceof UnknownAccountException) {
            mv.addObject("exception", ex);
            mv.setViewName("login");
        } else if (ex instanceof IncorrectCredentialsException) {
            mv.addObject("exception", ex);
            mv.setViewName("login");
        } else if (ex instanceof LockedAccountException) {
            mv.addObject("exception", ex);
            mv.setViewName("login");
        } else {
            mv.addObject("exception", ex);
            mv.setViewName("error/error.action");
        }
        return mv;
    }
}
