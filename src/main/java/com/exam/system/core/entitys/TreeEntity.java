package com.exam.system.core.entitys;

public class TreeEntity {
    private Integer id;
    private String parentId;
    private String name;

    /**
     * 获取id
     *
     * @return id id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置id
     *
     * @param id id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取parentId
     *
     * @return parentId parentId
     */
    public String getParentId() {
        return parentId;
    }

    /**
     * 设置parentId
     *
     * @param parentId parentId
     */
    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    /**
     * 获取name
     *
     * @return name name
     */
    public String getName() {
        return name;
    }

    /**
     * 设置name
     *
     * @param name name
     */
    public void setName(String name) {
        this.name = name;
    }
}
