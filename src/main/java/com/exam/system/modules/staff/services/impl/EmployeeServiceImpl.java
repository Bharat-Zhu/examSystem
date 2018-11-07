package com.exam.system.modules.staff.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.system.core.services.PasswordService;
import com.exam.system.modules.staff.entitys.Employee;
import com.exam.system.modules.staff.mappers.EmployeeMapper;
import com.exam.system.modules.staff.services.EmployeeService;

@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeMapper employeeMapper;
	
	public Employee getEmployeeById(String id) {
		return employeeMapper.selectEmployeeById(id);
	}

	public int addEmployee(Employee emp) {
		PasswordService.encryptPassword(emp);
		return employeeMapper.insetEmployee(emp);
	}
}
