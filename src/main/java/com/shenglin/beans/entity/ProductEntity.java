package com.shenglin.beans.entity;

import com.shenglin.base.DomainObject;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-5-19
 * Time: 下午4:22
 * To change this template use File | Settings | File Templates.
 * <p/>
 * 产品信息数据库实体/领域对象<br/>
 */

public class ProductEntity extends DomainObject {
    private static final long serialVersionUID = 1L;
    /**
     * 产品名称
     */
    private String name;

    /**
     * 产品类型
     */
    private String type;

    /**
     * 产品描述
     */
    private String description;

    /**
     * 产品参数
     */
    private String cs;

    /**
     * 产品图片
     * 内容：   /images/pictures/5.jpg
     */
    private String picture;

    /**
     * 创建日期
     */
    private Date cdate;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getCdate() {
        return cdate;
    }

    public void setCdate(Date cdate) {
        this.cdate = cdate;
    }


    public String getCs() {
        return cs;
    }

    public void setCs(String cs) {
        this.cs = cs;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("name", getName())
                .append("type", getType())
                .append("description", getDescription())
                .append("cs", getCs())
                .append("picture", getPicture())
                .append("cdate", getCdate()).toString();
    }
}
