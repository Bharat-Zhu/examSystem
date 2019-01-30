package com.exam.system.core.entitys;

import lombok.*;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import java.io.Serializable;

@Data
public class User extends CommonModel {
	
	private static final long serialVersionUID = 1L;
	
	@NotEmpty
	private String id;
	
	@NotEmpty
	private String name;
	
	@Length(min = 6, max = 16)
	private String password;
	private String salt;
	
	@Email
	private String email;

	@Length(max = 11)
	private String phone;

	@Override
	protected Serializable pkVal() {
		return this.id;
	}
}
