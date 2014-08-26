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

import java.io.Serializable;

/**
 * 键值entry<br>
 *
 * @author chenzhao
 * @version 1.0 , 2012-12-17
 * @see
 * @since 1.0
 */
public class Entry<K, V> implements Serializable {

	private static final long serialVersionUID = -7528027178760400055L;

	private K key;

	private V value;

	/**
	 *
	 */
	public Entry() {

	}

	/**
	 * @param key
	 * @param value
	 */
	public Entry(K key, V value) {
		this.key = key;
		this.value = value;
	}

	/**
	 * @return the key
	 */
	public K getKey() {
		return key;
	}

	/**
	 * @param key the key to set
	 */
	public void setKey(K key) {
		this.key = key;
	}

	/**
	 * @return the value
	 */
	public V getValue() {
		return value;
	}

	/**
	 * @param value the value to set
	 */
	public void setValue(V value) {
		this.value = value;
	}
}
