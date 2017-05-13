package com.kry.common;

/**
 * Created by xia.zl on 2017/5/13.
 * 条件类型枚举
 */
public enum TypeEnum{
    KEY_WORD(1,"标签"),
    BUSINESS(2,"覆盖业态"),
    PRODUCT_MODULE(3,"产品模块"),
    PRICE_RANCE(4,"价格范围");

    private Integer key;
    private String value;

    TypeEnum(Integer key, String value) {
        this.key = key;
        this.value = value;
    }

    public Integer getKey() {
        return key;
    }

    public void setKey(Integer key) {
        this.key = key;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
