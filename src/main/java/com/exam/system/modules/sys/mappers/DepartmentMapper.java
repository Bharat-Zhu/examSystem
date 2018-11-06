package com.exam.system.modules.sys.mappers;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.exam.system.modules.sys.entitys.Department;

import java.util.List;

public interface DepartmentMapper extends BaseMapper<Department> {
    List<Department> selectAll(Department dept);

    //List<Department> selectByName(String dept_name);

    Department selectById(Integer id);

    int insertDepartment(Department department);

    int updateDepartment(Department department);

    int deleteDepartment(Department department);
}
