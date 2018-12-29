package com.exam.system.modules.sys.mappers;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.exam.system.modules.sys.entitys.Department;

import java.util.List;

public interface DepartmentMapper extends BaseMapper<Department> {
    List<Department> selectAll(Page<Department> page);

    //List<Department> selectByName(String dept_name);

    Department selectById(Integer id);

    int insertDepartment(Department department);

    int updateDepartment(Department department);

    boolean deleteDepartment(Department department);
}
