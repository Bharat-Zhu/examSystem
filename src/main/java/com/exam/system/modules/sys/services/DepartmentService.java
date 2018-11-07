package com.exam.system.modules.sys.services;

import com.baomidou.mybatisplus.plugins.Page;
import com.exam.system.core.services.IBaseService;
import com.exam.system.modules.sys.entitys.Department;

public interface DepartmentService extends IBaseService<Department> {
    Page<Department> getDepartmentByAll(Page<Department> page, Integer state);

    Department getDepartmentById(int id);

    int addDepartment(Department dept);

    int deleteDepartment(Department dept);

    int updateDepartment(Department dept);
}
