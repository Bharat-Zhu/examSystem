package com.exam.system.modules.sys.services.impl;

import com.exam.system.modules.sys.entitys.Department;
import com.exam.system.modules.sys.mappers.DepartmentMapper;
import com.exam.system.modules.sys.services.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("departmentService")
public class DepartmentServiceImpl implements DepartmentService {

    @Autowired
    private DepartmentMapper departmentMapper;

    public List<Department> getDepartmentByAll(Department dept) {
        return departmentMapper.selectAll(dept);
    }

    @Override
    public Department getDepartmentById(int id) {
        return departmentMapper.selectById(id);
    }

    @Override
    public int addDepartment(Department dept) {
        return departmentMapper.insertDepartment(dept);
    }

    @Override
    public int deleteDepartment(Department dept) {
        return departmentMapper.deleteDepartment(dept);
    }

    @Override
    public int updateDepartment(Department dept) {
        return departmentMapper.updateDepartment(dept);
    }
}
