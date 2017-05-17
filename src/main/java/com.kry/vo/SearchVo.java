package com.kry.vo;

/**
 * Created by xia.zl on 2017/5/14.
 */
public class SearchVo {
    private Long[] attribute;
    private Long[] attributePrice;

    public Long[] getAttribute() {
        return attribute;
    }

    public void setAttribute(Long[] attribute) {
        this.attribute = attribute;
    }

    public Long[] getAttributePrice() {
        return attributePrice;
    }

    public void setAttributePrice(Long[] attributePrice) {
        this.attributePrice = attributePrice;
    }
}
