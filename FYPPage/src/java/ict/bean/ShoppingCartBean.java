package ict.bean;

import java.io.Serializable;
import java.sql.Date;

public class ShoppingCartBean implements Serializable {

    private String cartID;
    private String furnitureId;
    private String userID;
    private String item;


    public ShoppingCartBean() {
    }

    public String getCartID() {
        return cartID;
    }

    public void setCartID(String cartID) {
        this.cartID = cartID;
    }

    public String getFurnitureId() {
        return furnitureId;
    }

    public void setFurnitureId(String furnitureId) {
        this.furnitureId = furnitureId;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }
}

