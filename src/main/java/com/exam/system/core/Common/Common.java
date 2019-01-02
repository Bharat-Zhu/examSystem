package com.exam.system.core.Common;

import com.exam.system.core.utils.JSONUtils;

/**
 * 共通方法
 *
 * @author Zhu.Bert
 * @version 1.0
 * @create 2019-01-02
 */
public class Common {

    /**
     * 共通操作所执行结果后的json字符串
     * <p>
     *     前台调用共通的请求方式，所调方法
     * </p>
     *
     * @param message 执行后的Message
     * @param isSuccess 是否执行成功
     * @return 共通操作json字符串
     */
    public static String afterExecuteToJsonString(Object message, boolean isSuccess) {
        return JSONUtils.toJsonString(
                new String[]{Constants.MESSAGE_KEY, Constants.IS_SUCCESS},
                new Object[]{message, isSuccess});
    }

    /**
     * 共通操作所执行结果后的json字符串
     *
     * @param message 执行后的Message
     * @return 共通操作json字符串
     */
    public static String afterExecuteToJsonString(Object message) {
        return JSONUtils.toJsonString(
                new String[]{Constants.MESSAGE_KEY},
                new Object[]{message});
    }

    /**
     * 共通操作所执行结果后的json字符串
     *
     * @param isSuccess 是否执行成功
     * @return 共通操作json字符串
     */
    public static String afterExecuteToJsonString(boolean isSuccess) {
        return JSONUtils.toJsonString(
                new String[]{Constants.IS_SUCCESS},
                new Object[]{isSuccess});
    }
}
