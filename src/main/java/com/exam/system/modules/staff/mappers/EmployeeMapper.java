package com.exam.system.modules.staff.mappers;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import com.exam.system.modules.staff.entitys.Employee;

public interface EmployeeMapper extends BaseMapper<Employee> {
	
	Employee selectEmployeeById(String id);
	
	boolean insetEmployee(@Param("emp")Employee emp);
}
