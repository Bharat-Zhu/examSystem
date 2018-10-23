package com.exam.system.modules.sys.mappers;

import org.apache.ibatis.annotations.Param;

import com.exam.system.modules.sys.entitys.Employee;

public interface EmployeeMapper {
	
	Employee selectEmployeeById(String id);
	
	int insetEmployee(@Param("emp")Employee emp);
}
