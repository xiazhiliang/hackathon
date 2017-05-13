package com.kry.dao;

import com.kry.entity.Price;
import org.springframework.stereotype.Repository;

@Repository
public interface PriceMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Price record);

    int insertSelective(Price record);

    Price selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Price record);

    int updateByPrimaryKey(Price record);
}