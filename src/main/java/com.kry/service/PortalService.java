package com.kry.service;

import com.kry.entity.Attribute;
import com.kry.entity.Product;

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
     * 产品列表查询
     */
    List<Product> queryList();
}
