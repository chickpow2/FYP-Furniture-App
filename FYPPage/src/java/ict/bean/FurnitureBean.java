package ict.bean;

import java.io.Serializable;

public class FurnitureBean implements Serializable {

    private String furnitureId;
    private String name;
    private String price;
    private String model;
    private String description;
    // private String photo;

    public FurnitureBean() {

    }

    public FurnitureBean(String furnitureId, String name, String price, String model) {
        this.furnitureId = furnitureId;
        this.name = name;
        this.price = price;
        this.model = model;
        //this.description = description;
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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
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
    /*
    
    private String custid;
    private String name;
    private String tel;
    private String age;

    public FurnitureBean(){
    }
    
    public String getCustid(){
        return custid;
    }

    public String getName(){
        return name;
    }

    public String getTel(){
        return tel;
    }

    public String getAge(){
        return age;
    }

    public void setCustid(String id){
        custid=id;
    }

    public void setName(String name){
        this.name=name;
    }

    public void setTel(String tel){
        this.tel=tel;
    }

    public void setAge(String age){
        this.age=age;
    }

     */
}
