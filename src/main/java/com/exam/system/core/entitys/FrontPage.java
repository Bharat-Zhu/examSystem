package com.exam.system.core.entitys;

import com.baomidou.mybatisplus.plugins.Page;

public class FrontPage<T> {
	// 是否是查询
	private boolean _search;

	// 时间戳（毫秒）
	private String nd;

	// 每页显示条数
	private int rows;

	// 当前页数
	private int page;

	// 排序的字段
	private String sidx;

	// 排序方式 asc升序 desc降序
	private String sord;

	/**
	 * @return the _search
	 */
	public boolean is_search() {
		return _search;
	}

	/**
	 * @param _search the _search to set
	 */
	public void set_search(boolean _search) {
		this._search = _search;
	}

	/**
	 * @return the nd
	 */
	public String getNd() {
		return nd;
	}

	/**
	 * @param nd the nd to set
	 */
	public void setNd(String nd) {
		this.nd = nd;
	}

	/**
	 * @return the rows
	 */
	public int getRows() {
		return rows;
	}

	/**
	 * @param rows the rows to set
	 */
	public void setRows(int rows) {
		this.rows = rows;
	}

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
	 * @return the sidx
	 */
	public String getSidx() {
		return sidx;
	}

	/**
	 * @param sidx the sidx to set
	 */
	public void setSidx(String sidx) {
		this.sidx = sidx;
	}

	/**
	 * @return the sord
	 */
	public String getSord() {
		return sord;
	}

	/**
	 * @param sord the sord to set
	 */
	public void setSord(String sord) {
		this.sord = sord;
	}

	//获取mybatisPlus封装的Page对象
	public Page<T> getPagePlus() {
		Page<T> pagePlus = new Page<T>();
        pagePlus.setCurrent(this.page);
        pagePlus.setSize(this.rows);
        pagePlus.setAsc(this.sord.equals("asc"));
        pagePlus.setOrderByField(this.sidx);
        return pagePlus;
	}
}
