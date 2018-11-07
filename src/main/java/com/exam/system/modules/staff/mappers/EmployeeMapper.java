package com.exam.system.modules.staff.mappers;

import org.apache.ibatis.annotations.Param;

import com.exam.system.modules.staff.entitys.Employee;

public interface EmployeeMapper {
	
	Employee selectEmployeeById(String id);
	
	int insetEmployee(@Param("emp")Employee emp);
}
