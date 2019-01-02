package com.exam.system.modules.staff.services;

import com.exam.system.modules.staff.entitys.Employee;

public interface EmployeeService {
	
	Employee getEmployeeById(String id);
	
	boolean addEmployee(Employee emp);
}
