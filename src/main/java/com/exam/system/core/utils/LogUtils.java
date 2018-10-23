package com.exam.system.core.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogUtils {

    public static Logger log(Class<?> c) {
        return LoggerFactory.getLogger(c);
    }

}
