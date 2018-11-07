package com.exam.system.modules.sys.services.impl;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.plugins.Page;
import com.exam.system.core.services.BaseServiceImpl;
import com.exam.system.modules.sys.entitys.Department;
import com.exam.system.modules.sys.mappers.DepartmentMapper;
import com.exam.system.modules.sys.services.DepartmentService;

@Service("departmentService")
public class DepartmentServiceImpl extends BaseServiceImpl<DepartmentMapper, Department> implements DepartmentService {

    public Page<Department> getDepartmentByAll(Page<Department> page) {
        page.setRecords(baseMapper.selectAll(page));
        return page;
    }

    public Department getDepartmentById(int id) {
        return baseMapper.selectById(id);
    }

    public int addDepartment(Department dept) {
        return baseMapper.insertDepartment(dept);
    }

    public int deleteDepartment(Department dept) {
        return baseMapper.deleteDepartment(dept);
    }

    public int updateDepartment(Department dept) {
        return baseMapper.updateDepartment(dept);
    }
}
