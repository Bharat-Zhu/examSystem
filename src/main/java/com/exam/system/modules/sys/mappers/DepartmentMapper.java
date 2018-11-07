package com.exam.system.modules.sys.mappers;

import java.util.List;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.exam.system.modules.sys.entitys.Department;

public interface DepartmentMapper extends BaseMapper<Department> {
    List<Department> selectAll(Page<Department> page);

    //List<Department> selectByName(String dept_name);

    Department selectById(Integer id);

    int insertDepartment(Department department);

    int updateDepartment(Department department);

    int deleteDepartment(Department department);
}
