/**
 * Description: <类功能描述-必填> 
 * Copyright:   Copyright (c)2012  
 * Company:     ChunYu 
 * @author: ChenZhao
 * @version: 1.0
 * Create at:   2012-12-21 下午4:22:51  
 *
 * Modification History:  
 * Date         Author      Version     Description  
 * ------------------------------------------------------------------  
 * 2012-12-21   ChenZhao      1.0       如果修改了;必填  
 */
package com.shenglin.support;

/**
 * 分页对象<br>
 *
 * @author chenzhao
 * @version 1.0 , 2012-12-17
 * @see
 * @since 1.0
 */
public class Page {
	/**
	 * 第一页
	 */
	public static final int FIRST_PAGE = 1;

	/**
	 * 每页10条数
	 */
	public static final int DEFAULT_PAGE_SIZE = 10;

	/**
	 * 每页5条数
	 */
	public static final int FIVE_PAGE_SIZE = 5;

	/**
	 * 每页8条数
	 */
	public static final int EIGHT_PAGE_SIZE = 8;

	/**
	 * 每页20条数
	 */
	public static final int TWENTY_PAGE_SIZE = 20;

	/**
	 * 每页15条数
	 */
	public static final int FIFTEEN_PAGE_SIZE = 15;

	/**
	 * 每页有多少条记录
	 */
	private int pageSize = DEFAULT_PAGE_SIZE;

	/**
	 * 总页数
	 */
	private int pages;

	/**
	 * 当前页
	 */
	private int currentPage = 1;
	/**
	 * 总条数
	 */
	private int records;

	/**
	 *
	 */
	public Page() {
		this(FIRST_PAGE, DEFAULT_PAGE_SIZE);
	}

	/**
	 * @param pageSize
	 */
	public Page(int pageSize) {
		this(FIRST_PAGE, pageSize);
	}

	/**
	 * @param currentPage
	 * @param pageSize
	 */
	public Page(int currentPage, int pageSize) {
		this.currentPage = currentPage;
		this.pageSize = pageSize;
	}

	/**
	 * @param currentPage
	 * @param pageSize
	 * @param records
	 */
	public Page(int currentPage, int pageSize, int records) {
		this.currentPage = currentPage;
		this.pageSize = pageSize;
		this.records = records;
	}

	/**
	 * @return the pageSize
	 */
	public int getPageSize() {
		return pageSize;
	}

	/**
	 * @param pageSize the pageSize to set
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * @return the pages
	 */
	public int getPages() {
		return pages;
	}

	/**
	 * @param pages the pages to set
	 */
	public void setPages(int pages) {
		this.pages = pages;
	}

	/**
	 * @return the currentPage
	 */
	public int getCurrentPage() {
		return currentPage;
	}

	/**
	 * @param currentPage the currentPage to set
	 */
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	/**
	 * 判断是否第一页 <br>
	 *
	 * @return
	 * @see
	 * @since 1.0
	 */
	public boolean isFirstPage() {
		return currentPage == 1;
	}

	/**
	 * 判断是否最后一页 <br>
	 *
	 * @return
	 * @see
	 * @since 1.0
	 */
	public boolean isLastPage() {
		return currentPage == pages;
	}

	/**
	 * 当前页第一条的位置<br>
	 *
	 * @return
	 * @see
	 * @since 1.0
	 */
	public int getStartRecord() {
		return (currentPage - 1) * pageSize;
	}

	/**
	 * 当前页最后一条的位置<br>
	 *
	 * @return
	 * @see
	 * @since 1.0
	 */
	public int getEndRecord() {
		return getStartRecord() + getPageSize();
	}

	/**
	 * @return the records
	 */
	public int getRecords() {
		return records;
	}

	/**
	 * @param records records
	 */
	public void setRecords(int records) {
		this.records = records;
		int n = records % pageSize;
		if (n > 0)
			pages = records / pageSize + 1;
		else
			pages = records / pageSize;

        /*
		 * 如果当前页码小于第一页，强制将其设置成第一页
         */
		if (currentPage < FIRST_PAGE)
			currentPage = FIRST_PAGE;

        /*
         * 如果当前页码大于总页码，强制设置成总页码
         */
		if (pages > 0 && currentPage > pages)
			currentPage = pages;

	}

	/**
	 * 下一页<br>
	 *
	 * @return
	 * @see
	 * @since 1.0
	 */
	public int getNextPage() {
		int next = isLastPage() ? pages : currentPage + 1;
		currentPage = next;
		return next;
	}

	/**
	 * 前一页 <br>
	 *
	 * @return
	 * @see
	 * @since 1.0
	 */
	public int getPreviousPage() {
		int previous = isFirstPage() ? 1 : currentPage - 1;
		currentPage = previous;
		return previous;
	}

}
