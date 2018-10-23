package com.exam.system.modules.sys.mappers;

import com.exam.system.modules.sys.entitys.Employee;

public interface EmployeeMapper {
	
	Employee selectEmployeeById(String id);
	
	int insetEmployee(Employee emp);
}
