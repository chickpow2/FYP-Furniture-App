package com.google.ar.sceneform.samples.gltf;

class Furniture {
    private String name;
    private int price;
    private String model;
    private String photo;

    public Furniture(String name, int price, String model) {
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

    public int getPrice() {
        return price;
    }

    public String getModel() {
        return model;
    }
}