package ict.bean;

import java.io.Serializable;

public class FurnitureBean implements Serializable {

    private String furnitureId;
    private String name;
    private int price;
    private String model;
    private String description;
    private int rating;
    private int stock;
    private String detailDescription;
    private String type;
    private String image;

    public FurnitureBean() {
    }

    public FurnitureBean(String furnitureId, String name, int price, String model, String description, int rating, int stock, String detailDescription) {
        this.furnitureId = furnitureId;
        this.name = name;
        this.price = price;
        this.model = model;
        this.description = description;
        this.rating = rating;
        this.stock = stock;
        this.detailDescription = detailDescription;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getFurnitureId() {
        return furnitureId;
    }

    public void setFurnitureId(String furnitureId) {
        this.furnitureId = furnitureId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getDetailDescription() {
        return detailDescription;
    }

    public void setDetailDescription(String detailDescription) {
        this.detailDescription = detailDescription;
    }

    public String getType() {
        return type;

    }

    // private String photo;
    public void setType(String type) {
        this.type = type;
    }
}
