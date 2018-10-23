package com.exam.system.modules.sys.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.system.modules.sys.entitys.Employee;
import com.exam.system.modules.sys.mappers.EmployeeMapper;
import com.exam.system.modules.sys.services.EmployeeService;

@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeMapper employeeMapper;
	
	public Employee getEmployeeById(String id) {
		return employeeMapper.selectEmployeeById(id);
	}

	public int addEmployee(Employee emp) {
		return employeeMapper.insetEmployee(emp);
	}

}
