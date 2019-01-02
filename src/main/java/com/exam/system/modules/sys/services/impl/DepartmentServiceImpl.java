package com.exam.system.modules.sys.services.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.exam.system.core.Common.Constants;
import com.exam.system.core.services.BaseServiceImpl;
import com.exam.system.modules.sys.entitys.Department;
import com.exam.system.modules.sys.mappers.DepartmentMapper;
import com.exam.system.modules.sys.services.DepartmentService;
import org.springframework.stereotype.Service;

@Service("departmentService")
public class DepartmentServiceImpl extends BaseServiceImpl<DepartmentMapper, Department> implements DepartmentService {

    public Page<Department> getDepartmentByAll(Page<Department> page) {
        page.setRecords(baseMapper.selectAll(page));
        return page;
    }

    public Department getDepartmentById(int id) {
        return baseMapper.selectById(id);
    }

    public boolean addDepartment(Department dept) {
        setCreatorUpdaterId(dept);
        return baseMapper.insertDepartment(dept);
    }

    @Override
    public boolean deleteDeptById(Integer id) {
        Wrapper<Department> wrapper = new EntityWrapper<Department>();
        wrapper.eq("department_id", id);
        wrapper.eq("del_flag", Constants.NOT_DELETE);
        Department dept = new Department();
        dept.setDelFlag(Constants.HAVE_DELETED);
        setUpdaterId(dept);
        return update(dept, wrapper);
    }

    public boolean updateDepartment(Department dept) {
        setUpdaterId(dept);
        return baseMapper.updateDepartment(dept);
    }
}
