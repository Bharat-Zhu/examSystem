package com.exam.system.core.entitys;

import java.util.List;

import com.baomidou.mybatisplus.plugins.Page;

public class CustomPage<T> {
	// 当前页数
	private int page;

	// 每页显示数量
	private int pagesize;

	// 总条数
	private int records;

	// 数据列表
	private List<T> rows;

	// 总页数
	private int total;

	// 排序字段
	private String orderByField;

	// 是否升序
	private boolean isAsc;

	/**
	 * @return the page
	 */
	public int getPage() {
		return page;
	}

	/**
	 * @param page the page to set
	 */
	public void setPage(int page) {
		this.page = page;
	}

	/**
	 * @return the pagesize
	 */
	public int getPagesize() {
		return pagesize;
	}

	/**
	 * @param pagesize the pagesize to set
	 */
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

	/**
	 * @return the records
	 */
	public int getRecords() {
		return records;
	}

	/**
	 * @param records the records to set
	 */
	public void setRecords(int records) {
		this.records = records;
	}

	/**
	 * @return the rows
	 */
	public List<T> getRows() {
		return rows;
	}

	/**
	 * @param rows the rows to set
	 */
	public void setRows(List<T> rows) {
		this.rows = rows;
	}

	/**
	 * @return the total
	 */
	public int getTotal() {
		return total;
	}

	/**
	 * @param total the total to set
	 */
	public void setTotal(int total) {
		this.total = total;
	}

	/**
	 * @return the orderByField
	 */
	public String getOrderByField() {
		return orderByField;
	}

	/**
	 * @param orderByField the orderByField to set
	 */
	public void setOrderByField(String orderByField) {
		this.orderByField = orderByField;
	}

	/**
	 * @return the isAsc
	 */
	public boolean isAsc() {
		return isAsc;
	}

	/**
	 * @param isAsc the isAsc to set
	 */
	public void setAsc(boolean isAsc) {
		this.isAsc = isAsc;
	}

	public CustomPage(Page<T> page) {
		this.page = page.getCurrent();
		this.pagesize = page.getSize();
		this.records = page.getTotal();
		this.rows = page.getRecords();
		this.total = page.getPages();
		this.orderByField = page.getOrderByField();
		this.isAsc = page.isAsc();
	}
}
