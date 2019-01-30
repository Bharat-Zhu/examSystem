package com.exam.system.core.entitys;

import com.baomidou.mybatisplus.activerecord.Model;
import lombok.Data;

import java.util.Date;

/**
 * 所有共通的实体字段
 *
 * @author Zhu.Bert
 * @version 1.0
 * @create 2018-12-29
 */
@Data
public abstract class CommonModel extends Model<CommonModel> {

    /** 删除标记 */
    private String delFlag;

    /** 创建者ID */
    private String creatorId;

    /** 更新者ID */
    private String updaterId;

    /** 创建时间 */
    private Date createDatetime;

    /** 更新时间 */
    private Date updateDatetime;
}
