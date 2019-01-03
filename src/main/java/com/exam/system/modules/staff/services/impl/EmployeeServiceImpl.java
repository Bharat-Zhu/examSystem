package com.exam.system.modules.staff.services.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.SqlHelper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.exam.system.core.Common.Constants;
import com.exam.system.core.services.BaseServiceImpl;
import com.exam.system.core.services.PasswordService;
import com.exam.system.modules.staff.entitys.Employee;
import com.exam.system.modules.staff.mappers.EmployeeMapper;
import com.exam.system.modules.staff.services.EmployeeService;
import org.springframework.stereotype.Service;

@Service("employeeService")
public class EmployeeServiceImpl extends BaseServiceImpl<EmployeeMapper, Employee> implements EmployeeService {

	public Employee getEmployeeById(String id) {
		return baseMapper.selectEmployeeById(id);
	}

	@Override
	public boolean addEmployee(Employee emp) {
		PasswordService.encryptPassword(emp);
        super.setCreatorUpdaterId(emp);
		return baseMapper.insetEmployee(emp);
	}

    @Override
	public Page<Employee> selectPageByWhere(Page<Employee> page, Employee emp) {
        Wrapper<Employee> wrapper = new EntityWrapper<Employee>();
        wrapper.eq("del_flag", Constants.NOT_DELETE);

        SqlHelper.fillWrapper(page, wrapper);
        page.setRecords(baseMapper.selectListByWhere(page, wrapper));
        return page;
	}
}
