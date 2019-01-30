package com.exam.system.modules.staff.services;

import com.baomidou.mybatisplus.plugins.Page;
import com.exam.system.core.services.IBaseService;
import com.exam.system.modules.staff.entitys.Employee;

public interface EmployeeService extends IBaseService<Employee> {
	
	Employee getEmployeeById(String id);
	
	boolean addEmployee(Employee emp);

	boolean updateEmployee(Employee emp);

	boolean deleteById(String id);

    Page<Employee> selectPageByWhere(Page<Employee> page, Employee emp);
}
