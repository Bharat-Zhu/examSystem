package com.exam.system.core.shiro.filter;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.SessionException;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.LogoutFilter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class ExamLogoutFilter extends LogoutFilter {

    @Override
    protected boolean preHandle(ServletRequest request, ServletResponse response) throws Exception {
        Subject subject=getSubject(request,response);
        Session session = subject.getSession();
        String redirectUrl=getRedirectUrl(request,response,subject);
        Object hs = session.getAttribute("LOCALE");
        HttpServletRequest hsr = (HttpServletRequest)request;
        try {
            subject.logout();
            hsr.getSession().setAttribute("org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE", hs);
        }catch (SessionException e){
            e.printStackTrace();
        }
        issueRedirect(request, response, redirectUrl);
        return false;
    }
}
