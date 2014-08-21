package com.shenglin.service;

import com.shenglin.beans.entity.ProductEntity;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-5-21
 * Time: 上午9:55
 * To change this template use File | Settings | File Templates.
 */
public interface ProductService {
    public ProductEntity getProductById(String id);

    public List<ProductEntity> getProductAll();

    public int addProduct(ProductEntity productEntity);

    public int updateProduct(ProductEntity productEntity);

    public int deleteProduct(String id);

    public List<ProductEntity> getProductsByType(String type);
}
