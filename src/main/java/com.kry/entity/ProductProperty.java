package com.kry.entity;

import java.io.Serializable;

public class ProductProperty implements Serializable {
    private Long id;

    private Long productId;

    private String deviceName;

    private Integer memory;

    private Integer flashMemory;

    private Integer pixel;

    private String wlan;

    private String wirelessModel;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getProductId() {
        return productId;
    }

    public void setProductId(Long productId) {
        this.productId = productId;
    }

    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    public Integer getMemory() {
        return memory;
    }

    public void setMemory(Integer memory) {
        this.memory = memory;
    }

    public Integer getFlashMemory() {
        return flashMemory;
    }

    public void setFlashMemory(Integer flashMemory) {
        this.flashMemory = flashMemory;
    }

    public Integer getPixel() {
        return pixel;
    }

    public void setPixel(Integer pixel) {
        this.pixel = pixel;
    }

    public String getWlan() {
        return wlan;
    }

    public void setWlan(String wlan) {
        this.wlan = wlan == null ? null : wlan.trim();
    }

    public String getWirelessModel() {
        return wirelessModel;
    }

    public void setWirelessModel(String wirelessModel) {
        this.wirelessModel = wirelessModel == null ? null : wirelessModel.trim();
    }
}