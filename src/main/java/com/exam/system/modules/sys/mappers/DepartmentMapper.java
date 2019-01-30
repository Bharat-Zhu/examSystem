package com.exam.system.modules.sys.mappers;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.exam.system.modules.sys.entitys.Department;

import java.util.List;

public interface DepartmentMapper extends BaseMapper<Department> {
    List<Department> selectAll();

    Department selectById(Integer id);

    boolean insertDepartment(Department department);

    boolean updateDepartment(Department department);

    boolean deleteDepartment(Department department);
}
