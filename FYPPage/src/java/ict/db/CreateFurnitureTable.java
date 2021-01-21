/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.db;

public class CreateFurnitureTable {

    public static void main(String arg[]) {

        String url = "jdbc:derby://localhost:1527/ITP4912_DB";
        String username = "APP";
        String password = "APP";

        FurnitureDB furnitureDB = new FurnitureDB(url, username, password);
        furnitureDB.createCustTable();
       furnitureDB.addRecord("Antique Table", "599", "black", "Black Antique Table", 5, 10, "Black Antique Table");
        furnitureDB.addRecord("Tea Table", "699", "dark wood", "Dark Wood Tea Table", 4, 15, "Dark Wood Tea Table");
        furnitureDB.addRecord("Wooden Table", "499", "white", "White Wooden Table", 5, 13, "White Wooden Table");
        furnitureDB.addRecord("Ironwood Table", "499", "walnut", "Walnut Ironwood Table", 5, 13, "Walnut Ironwood Table");
        furnitureDB.addRecord("Iron Garden Table", "499", "brown", "Brown Garden Table", 5, 14, "Brown Garden Table");
        furnitureDB.addRecord("Antique Mini Table", "499", "brown", "Brown Antique Mini Table", 4, 10, "Brown Antique Mini Table");

        
    }
}
