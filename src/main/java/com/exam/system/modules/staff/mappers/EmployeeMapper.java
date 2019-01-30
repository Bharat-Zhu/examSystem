package com.exam.system.modules.staff.mappers;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.exam.system.modules.staff.entitys.Employee;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

public interface EmployeeMapper extends BaseMapper<Employee> {
	
	Employee selectEmployeeById(String id);
	
	boolean insetEmployee(@Param("emp")Employee emp);

	boolean updateEmployee(Employee emp);

    List<Employee> selectListByWhere(RowBounds rowBounds, @Param("ew") Wrapper<Employee> wrapper);
}
