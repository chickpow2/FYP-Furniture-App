package com.google.ar.sceneform.samples.gltf;

public class Furniture {
    private String name;
    private String price;
    private String model;
    private String photo;
private String image;

    public Furniture(String name, String price, String model) {
        this.name = name;
        this.price = price;
        this.model = model;
        //this.photo = photo;
    }

    public String getName() {
        return name;
    }

    public String getPhoto() {
        return photo;
    }

    public String getPrice() {
        return price;
    }

    public String getModel() {
        return model;
    }

    public String getImage() {
        return image;
    }
}