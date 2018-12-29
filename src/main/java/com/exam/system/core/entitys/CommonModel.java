package com.exam.system.core.entitys;

import com.baomidou.mybatisplus.activerecord.Model;

import java.util.Date;

/**
 * 所有共通的实体字段
 *
 * @author Zhu.Bert
 * @version 1.0
 * @create 2018-12-29
 */
public abstract class CommonModel extends Model<CommonModel> {

    private String delFlag;
    private String creatorId;
    private String updaterId;
    private Date createDatetime;
    private Date updateDatetime;

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
}
