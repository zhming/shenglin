package com.shenglin.beans.entity;

import com.shenglin.base.DomainObject;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-6-20
 * Time: 下午4:34
 * To change this template use File | Settings | File Templates.
 */
public class ProductTypeEntity extends DomainObject {
    /**
     * 产品类型代码
     */
    private String typeCode;
    /**
     * 产品类型名称
     */
    private String typeName;

    public String getTypeCode() {
        return typeCode;
    }

    public void setTypeCode(String typeCode) {
        this.typeCode = typeCode;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }
}
