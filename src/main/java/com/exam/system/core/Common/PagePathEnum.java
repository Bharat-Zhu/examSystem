package com.exam.system.core.Common;

/**
 * 页面路径枚举
 *
 * @author Zhu.Bert
 * @version 1.0
 * @create 2019-01-02
 */
public enum PagePathEnum {
    SYS("modules/sys/"),
    STAFF("modules/staff/"),
    EXAM("modules/exam/");

    private final String name;

    private PagePathEnum(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
