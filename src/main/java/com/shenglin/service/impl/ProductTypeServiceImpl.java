package com.shenglin.service.impl;

import com.google.common.collect.Maps;
import com.mybatis.mapper.ProductTypeMapper;
import com.shenglin.beans.entity.ProductTypeEntity;
import com.shenglin.service.ProductTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.TreeMap;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-5-21
 * Time: 上午9:56
 * To change this template use File | Settings | File Templates.
 */
@Service("productTypeService")
public class ProductTypeServiceImpl implements ProductTypeService {
    private static final Logger logger = LoggerFactory.getLogger(ProductTypeServiceImpl.class);
    @Resource
    private ProductTypeMapper productTypeMapper;

    @Override
    public TreeMap<String, String> getProductTypeAll() {
        TreeMap<String, String> map = Maps.newTreeMap();
        List<ProductTypeEntity> productTypes = productTypeMapper.getProductTypeAll();
        for (ProductTypeEntity type : productTypes) {
            map.put(type.getTypeCode(), type.getTypeName());
        }
        logger.info("getProductTypeAll() list.size = {}", productTypes.size());
        return map;
    }


}
