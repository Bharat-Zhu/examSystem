package com.exam.system.modules.sys.entitys;

import com.baomidou.mybatisplus.annotations.TableName;
import com.exam.system.core.entitys.CommonModel;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("tbl_department")
public class Department extends CommonModel {

    private static final long serialVersionUID = 1L;
    private Integer departmentId;
    private String name;
    private String tel;
    private String remark;
    private String extendFirst;
    private String extendSecond;

    @Override
    protected Serializable pkVal() {
        return this.departmentId;
    }
}

