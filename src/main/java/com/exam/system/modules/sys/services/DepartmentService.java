package com.exam.system.modules.sys.services;

import com.exam.system.core.services.IBaseService;
import com.exam.system.modules.sys.entitys.Department;

import java.util.List;

public interface DepartmentService extends IBaseService<Department> {
    /**
     * 查询全部
     *
     * @return 部门List
     */
    List<Department> getAll();

    Department getDepartmentById(int id);

    boolean addDepartment(Department dept);

    boolean deleteDeptById(Integer id);

    boolean updateDepartment(Department dept);
}
