package ict.bean;

import java.io.*;
import java.util.*;

public class OrderBean implements Serializable {

    private String userId;
    private String orderId;
    private ArrayList furnId;
    private ArrayList furnName;
    private String sendDate;
    private String orderDate;
    private String status;

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

    public ArrayList getFurnId() {
        return furnId;
    }

    public void setFurnId(ArrayList furnId) {
        this.furnId = furnId;
    }

    public ArrayList getFurnName() {
        return furnName;
    }

    public void setFurnName(ArrayList furnName) {
        this.furnName = furnName;
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

}
