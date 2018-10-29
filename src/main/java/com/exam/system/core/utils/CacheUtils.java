package com.exam.system.core.utils;

import net.sf.ehcache.*;

public class CacheUtils {

    private static CacheManager cacheManager = (CacheManager) SpringContextUtils.getBean("ehCacheManager");
    private static final String SYS_CACHE = "sysCache";


    public static Object get(String cacheName, String key) {
        Element element = getCache(cacheName).get(key);
        return element == null ? null : element.getObjectValue();
    }

    public static Cache getCache(String cacheName) {
        Cache cache = cacheManager.getCache(cacheName);
        if (cache == null) {
            cacheManager.addCache(cacheName);
            cache = cacheManager.getCache(cacheName);
            cache.getCacheConfiguration().setEternal(false);
        }
        return cache;
    }

}
