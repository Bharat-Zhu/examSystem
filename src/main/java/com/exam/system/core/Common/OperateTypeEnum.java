package com.exam.system.core.Common;

public enum OperateTypeEnum {
    EDIT("edit"),
    UPDATE("update"),
    DELETE("delete"),
    CREATE("create"),
    INFO("info");

    private final String name;

    private OperateTypeEnum(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
