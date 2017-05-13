package com.kry.dao;

import com.kry.entity.ProductAttribute;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductAttributeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ProductAttribute record);

    int insertSelective(ProductAttribute record);

    ProductAttribute selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ProductAttribute record);

    int updateByPrimaryKey(ProductAttribute record);
}