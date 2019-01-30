package com.exam.system.modules.staff.entitys;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.exam.system.core.entitys.User;
import com.exam.system.modules.sys.entitys.Department;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Past;
import java.util.Date;

@Data
@TableName("tbl_employee")
public class Employee extends User {

    private static final long serialVersionUID = -6523062711898895039L;

    @Past
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birth;

    private Integer deptId;

    @TableField(exist = false)
    private Department department;
}
