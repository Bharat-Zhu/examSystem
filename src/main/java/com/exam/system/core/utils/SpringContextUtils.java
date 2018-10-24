package com.exam.system.core.utils;

import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class SpringContextUtils implements ApplicationContextAware,DisposableBean {

    private static ApplicationContext applicationContext = null;

    private static Logger logger = LogUtils.log(SpringContextUtils.class);

    /**
     * 获取applicationContext
     *
     * @return applicationContext applicationContext
     */
    public static ApplicationContext getApplicationContext() {
        assertContextInjected();
        return applicationContext;
    }

    public static Object getBean(String name){
        assertContextInjected();
        return applicationContext.getBean(name);
    }

    public static <T> T getBean(Class<T> requiredType){
        assertContextInjected();
        return applicationContext.getBean(requiredType);
    }

    public static void clearApplicationContext() {
        if (logger.isDebugEnabled()) {
            logger.debug("Clear SpringContextUtils ApplicationContext:" + applicationContext);
        }
        applicationContext = null;
    }

    @Override
    public void destroy() throws Exception {
        SpringContextUtils.clearApplicationContext();
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        SpringContextUtils.applicationContext = applicationContext;
    }

    public static void assertContextInjected() {
        Validate.validState(applicationContext != null, "The applicaitonContext property is not injected.");
    }
}
