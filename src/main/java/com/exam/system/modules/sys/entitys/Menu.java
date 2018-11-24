package com.exam.system.modules.sys.entitys;

import java.util.Date;
import java.util.List;

public class Menu {
    private String id;
    private String name;
    private String type;
    private String url;
    private String parentId;
    private String permission;
    private int rank;
    private String menuIcon;
    private String remarks;
    private String delFlag;
    private String creatorId;
    private Date createDatetime;
    private String updaterId;
    private Date updateDatetime;

    private List<Menu> childrenMenu;

    /**
     * 获取id
     *
     * @return id id
     */
    public String getId() {
        return id;
    }

    /**
     * 设置id
     *
     * @param id id
     */
    public void setId(String id) {
        this.id = id;
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

    /**
     * 获取type
     *
     * @return type type
     */
    public String getType() {
        return type;
    }

    /**
     * 设置type
     *
     * @param type type
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * 获取url
     *
     * @return url url
     */
    public String getUrl() {
        return url;
    }

    /**
     * 设置url
     *
     * @param url url
     */
    public void setUrl(String url) {
        this.url = url;
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
     * 获取permission
     *
     * @return permission permission
     */
    public String getPermission() {
        return permission;
    }

    /**
     * 设置permission
     *
     * @param permission permission
     */
    public void setPermission(String permission) {
        this.permission = permission;
    }

    /**
     * 获取rank
     *
     * @return rank rank
     */
    public int getRank() {
        return rank;
    }

    /**
     * 设置rank
     *
     * @param rank rank
     */
    public void setRank(int rank) {
        this.rank = rank;
    }

    /**
     * 获取menuIcon
     *
     * @return menuIcon menuIcon
     */
    public String getMenuIcon() {
        return menuIcon;
    }

    /**
     * 设置menuIcon
     *
     * @param menuIcon menuIcon
     */
    public void setMenuIcon(String menuIcon) {
        this.menuIcon = menuIcon;
    }

    /**
     * 获取remarks
     *
     * @return remarks remarks
     */
    public String getRemarks() {
        return remarks;
    }

    /**
     * 设置remarks
     *
     * @param remarks remarks
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    /**
     * 获取delFlag
     *
     * @return delFlag delFlag
     */
    public String getDelFlag() {
        return delFlag;
    }

    /**
     * 设置delFlag
     *
     * @param delFlag delFlag
     */
    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    /**
     * 获取creatorId
     *
     * @return creatorId creatorId
     */
    public String getCreatorId() {
        return creatorId;
    }

    /**
     * 设置creatorId
     *
     * @param creatorId creatorId
     */
    public void setCreatorId(String creatorId) {
        this.creatorId = creatorId;
    }

    /**
     * 获取createDatetime
     *
     * @return createDatetime createDatetime
     */
    public Date getCreateDatetime() {
        return createDatetime;
    }

    /**
     * 设置createDatetime
     *
     * @param createDatetime createDatetime
     */
    public void setCreateDatetime(Date createDatetime) {
        this.createDatetime = createDatetime;
    }

    /**
     * 获取updaterId
     *
     * @return updaterId updaterId
     */
    public String getUpdaterId() {
        return updaterId;
    }

    /**
     * 设置updaterId
     *
     * @param updaterId updaterId
     */
    public void setUpdaterId(String updaterId) {
        this.updaterId = updaterId;
    }

    /**
     * 获取updateDatetime
     *
     * @return updateDatetime updateDatetime
     */
    public Date getUpdateDatetime() {
        return updateDatetime;
    }

    /**
     * 设置updateDatetime
     *
     * @param updateDatetime updateDatetime
     */
    public void setUpdateDatetime(Date updateDatetime) {
        this.updateDatetime = updateDatetime;
    }

    /**
     * 获取childrenMenu
     *
     * @return childrenMenu childrenMenu
     */
    public List<Menu> getChildrenMenu() {
        return childrenMenu;
    }

    /**
     * 设置childrenMenu
     *
     * @param childrenMenu childrenMenu
     */
    public void setChildrenMenu(List<Menu> childrenMenu) {
        this.childrenMenu = childrenMenu;
    }
}
