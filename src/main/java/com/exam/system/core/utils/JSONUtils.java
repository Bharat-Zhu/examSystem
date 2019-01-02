package com.exam.system.core.utils;

import com.alibaba.fastjson.JSONObject;

/**
 * JSON 工具类
 *
 * @author Zhu.Bert
 * @version 1.0
 * @create 2019-01-02
 */
public class JSONUtils extends JSONObject {

    /**
     * 返回JSON字符串
     * <p>key和value必须一一对应。</p>
     * @param keys json串中对应的key；
     * @param args json串中对应的value；
     * @return json字符串
     * @throws IllegalArgumentException 参数异常
     */
    public static String toJsonString(String[] keys, Object[] args) {
        JSONUtils jsonUtils = new JSONUtils();

        for (int i = 0; i < keys.length; i++) {
            try {
                jsonUtils.put(keys[i], args[i]);
            } catch (Exception e) {
                throw new IllegalArgumentException("Parameter passed in does not match.");
            }
        }

        return jsonUtils.toJSONString();
    }
}
