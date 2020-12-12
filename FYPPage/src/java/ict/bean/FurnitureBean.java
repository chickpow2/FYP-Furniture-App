package ict.bean;

class FurnitureBean {
    private String name;
    private int price;
    private String model;
    private String photo;

    public FurnitureBean(String name, int price, String model) {
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