package com.exam.system.core.utils;

import org.springframework.context.MessageSource;

public class MessageUtils {

    private static MessageSource messageSource;

    public static String getMessage(String code, Object... args) {
        if (messageSource == null) {
            messageSource = SpringContextUtils.getBean(MessageSource.class);
        }

        return messageSource.getMessage(code, args, ExamUtils.getLocale());
    }

    public static String getMessage(String code, String defaultMessage, Object... args) {
        if (messageSource == null) {
            messageSource = SpringContextUtils.getBean(MessageSource.class);
        }

        return messageSource.getMessage(code, args, defaultMessage, ExamUtils.getLocale());
    }

    public static String getMessageOrSelf(String code, Object... args) {
        String message = "";
        try {
            message = getMessage(code, args, code);
        } catch (Exception e) {
            message = code;
        }
        return message;
    }
}
