package com.exam.system.modules.sys.services;

import com.exam.system.modules.sys.entitys.Department;

import java.util.List;

public interface DepartmentService {
    List<Department> getDepartmentByAll(Department dept);

    Department getDepartmentById(int id);

    int addDepartment(Department dept);

    int deleteDepartment(Department dept);

    int updateDepartment(Department dept);
}
