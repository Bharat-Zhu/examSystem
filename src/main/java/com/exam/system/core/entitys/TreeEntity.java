package com.exam.system.core.entitys;

import lombok.Data;

@Data
public class TreeEntity {
    private Integer id;
    private String parentId;
    private String name;
}
