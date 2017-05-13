package com.kry.dao;

import com.kry.entity.ProductAttribute;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductAttributeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ProductAttribute record);

    int insertSelective(ProductAttribute record);

    ProductAttribute selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ProductAttribute record);

    int updateByPrimaryKey(ProductAttribute record);
}