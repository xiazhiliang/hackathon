package com.kry.service;

import com.kry.entity.Attribute;
import com.kry.entity.ProductProperty;
import com.kry.vo.SearchVo;

import java.util.List;

;

/**
 * Created by xia.zl on 2017/5/13.
 */

public interface PortalService {
    /**
     * 属性类型查询
     * @param type
     * @return
     */
    List<Attribute> queryByType(Integer type);

    /**
     * 属性类型查询
     * @param type
     * @return
     */
    List<Attribute> queryByPriceType(Integer type,List<Long> list);

    /**
     * 产品列表查询
     */
    List<ProductProperty> queryList(SearchVo searchVo);
}
