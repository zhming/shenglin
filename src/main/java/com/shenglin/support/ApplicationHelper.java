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

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

/**
 * 容器帮助类<br>
 *
 *
 * @author chenzhao
 * @version 1.0 , 2012-12-17
 * @see
 * @since 1.0
 */

/**
 * <br>
 *
 * @author chenzhao
 * @version 1.0 , 2012-12-17
 * @see
 * @since 1.0
 */
public class ApplicationHelper implements ApplicationContextAware {
	/**
	 *
	 */
	private static ApplicationHelper helper = new ApplicationHelper();

	/**
	 *
	 */
	private ApplicationContext context;

	/**
	 * 构造方法
	 */
	public ApplicationHelper() {
	}

	/**
	 * 获取ApplicationHelper单例<br>
	 *
	 * @return
	 * @see
	 * @since 1.0
	 */
	public static ApplicationHelper getInstance() {
		return helper;
	}

	/**
	 * 获取ApplicationContext<br>
	 *
	 * @return
	 * @see
	 * @since 1.0
	 */
	public ApplicationContext getContext() {
		return context;
	}

	/**
	 * 获取bean<br>
	 *
	 * @param beanName
	 * @return
	 * @see
	 * @since 1.0
	 */
	public Object getBean(String beanName) {
		Object obj = getContext().getBean(beanName);
		return obj;
	}

	/**
	 * 设置ApplicationContext<br>
	 *
	 * @param context
	 * @see
	 * @since 1.0
	 */
	public void setContext(ApplicationContext context) {
		this.context = context;
	}

	/**
	 * (non-Javadoc)
	 *
	 * @see org.springframework.context.ApplicationContextAware#setApplicationContext(org.springframework.context.ApplicationContext)
	 */
	public void setApplicationContext(ApplicationContext ac) throws BeansException {
		getInstance().context = ac;
	}

}
