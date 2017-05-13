package com.kry.dao;

import com.kry.entity.Product;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);
}