package com.exam.system.modules.sys.entitys;

import com.baomidou.mybatisplus.annotations.TableName;
import com.exam.system.core.entitys.CommonModel;

import java.io.Serializable;

@TableName("tbl_department")
public class Department extends CommonModel {

	private static final long serialVersionUID = 1L;
	private Integer departmentId;
	private String name;
	private String tel;
	private String remark;
	private String extendFirst;
	private String extendSecond;
	
	/**
	 * 获取departmentId
	 *
	 * @return departmentId departmentId
	 */
	public Integer getDepartmentId() {
		return departmentId;
	}

	/**
	 * 设置departmentId
	 *
	 * @param departmentId departmentId
	 */
	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}

	/**
	 * 获取name
	 *
	 * @return name name
	 */
	public String getName() {
		return name;
	}

	/**
	 * 设置name
	 *
	 * @param name name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * 获取tel
	 *
	 * @return tel tel
	 */
	public String getTel() {
		return tel;
	}

	/**
	 * 设置tel
	 *
	 * @param tel tel
	 */
	public void setTel(String tel) {
		this.tel = tel;
	}

	/**
	 * 获取remark
	 *
	 * @return remark remark
	 */
	public String getRemark() {
		return remark;
	}

	/**
	 * 设置remark
	 *
	 * @param remark remark
	 */
	public void setRemark(String remark) {
		this.remark = remark;
	}

	/**
	 * 获取extendFirst
	 *
	 * @return extendFirst extendFirst
	 */
	public String getExtendFirst() {
		return extendFirst;
	}

	/**
	 * 设置extendFirst
	 *
	 * @param extendFirst extendFirst
	 */
	public void setExtendFirst(String extendFirst) {
		this.extendFirst = extendFirst;
	}

	/**
	 * 获取extendSecond
	 *
	 * @return extendSecond extendSecond
	 */
	public String getExtendSecond() {
		return extendSecond;
	}

	/**
	 * 设置extendSecond
	 *
	 * @param extendSecond extendSecond
	 */
	public void setExtendSecond(String extendSecond) {
		this.extendSecond = extendSecond;
	}

	@Override
	protected Serializable pkVal() {
		return this.departmentId;
	}
}
