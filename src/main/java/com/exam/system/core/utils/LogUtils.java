package com.exam.system.core.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogUtils {

    public static Logger log(Object o) {
        return LoggerFactory.getLogger(o.getClass());
    }

}
