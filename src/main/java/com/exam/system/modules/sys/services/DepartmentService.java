package com.exam.system.modules.sys.services;

import com.exam.system.modules.sys.entitys.Department;

import java.util.List;

public interface DepartmentService {
    List<Department> getDepartmentByAll(Department dept);
}
