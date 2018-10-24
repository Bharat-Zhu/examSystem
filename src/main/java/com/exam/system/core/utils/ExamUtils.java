package com.exam.system.core.utils;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Locale;

public class ExamUtils {

    /**
     * 获取 Spring MVC 下的Request
     *
     * @return HttpServletRequest
     */
    public static HttpServletRequest getRequest() {
        return ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
    }

    /**
     * 获取 Spring MVC 下的Session
     *
     * @return HttpSession
     */
    public static HttpSession getSession() {
        return ExamUtils.getRequest().getSession();
    }

    /**
     * 获取国际化Locale
     *
     * @return Locale
     */
    public static Locale getLocale() {
        return (Locale) ExamUtils.getSession().getAttribute("LOCALE");
    }
}
