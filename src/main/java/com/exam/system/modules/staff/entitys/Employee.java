package com.exam.system.modules.staff.entitys;

import com.exam.system.core.entitys.User;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Past;
import java.io.Serializable;
import java.util.Date;

public class Employee extends User implements Serializable {

	private static final long serialVersionUID = -6523062711898895039L;

	@Past
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birth;

	/**
	 * @return the birth
	 */
	public Date getBirth() {
		return birth;
	}

	/**
	 * @param birth the birth to set
	 */
	public void setBirth(Date birth) {
		this.birth = birth;
	}

}
