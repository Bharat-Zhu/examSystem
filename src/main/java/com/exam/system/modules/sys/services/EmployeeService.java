package com.exam.system.modules.sys.services;

import com.exam.system.modules.sys.entitys.Employee;

public interface EmployeeService {
	
	Employee getEmployeeById(String id);
	
	int addEmployee(Employee emp);
}
