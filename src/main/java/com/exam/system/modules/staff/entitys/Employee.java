package com.exam.system.modules.staff.entitys;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.exam.system.core.entitys.User;
import com.exam.system.modules.sys.entitys.Department;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Past;
import java.util.Date;

@TableName("tbl_employee")
public class Employee extends User {

    private static final long serialVersionUID = -6523062711898895039L;

    @Past
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birth;

    private Integer deptId;

    @TableField(exist = false)
    private Department department;

    /**
     * @return the birth
     */
    public Date getBirth() {
        return birth;
    }

    /**
     * @param birth the birth to set
     */
    public void setBirth(Date birth) {
        this.birth = birth;
    }

    /**
     * 获取deptId
     *
     * @return deptId deptId
     */
    public Integer getDeptId() {
        return deptId;
    }

    /**
     * 设置deptId
     *
     * @param deptId deptId
     */
    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    /**
     * 获取department
     *
     * @return department department
     */
    public Department getDepartment() {
        return department;
    }

    /**
     * 设置department
     *
     * @param department department
     */
    public void setDepartment(Department department) {
        this.department = department;
    }
}
