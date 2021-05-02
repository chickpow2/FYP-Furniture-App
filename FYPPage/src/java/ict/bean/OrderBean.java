package ict.bean;

import java.io.*;
import java.util.*;

public class OrderBean implements Serializable {

    private String userId;
    private String orderId;
    private String sendDate;
    private String orderDate;
    private String status;
    private String shippingOption;
    private String address;
    private String ttlPrice;

    public OrderBean() {
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getSendDate() {
        return sendDate;
    }

    public void setSendDate(String sendDate) {
        this.sendDate = sendDate;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getShippingOption() {
        return shippingOption;
    }

    public void setShippingOption(String shippingOption) {
        this.shippingOption = shippingOption;
    }

    public String getTtlPrice() {
        return ttlPrice;
    }

    public void setTtlPrice(String ttlPrice) {
        this.ttlPrice = ttlPrice;
    }

}
