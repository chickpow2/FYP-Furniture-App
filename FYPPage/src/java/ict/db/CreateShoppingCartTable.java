/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.db;

public class CreateShoppingCartTable {

    public static void main(String arg[]) {

        String url = "jdbc:derby://localhost:1527/ITP4912_DB";
        String username = "APP";
        String password = "APP";

        ShoppingCartDB shoppingCartDB = new ShoppingCartDB(url, username, password);
        shoppingCartDB.createBorrowTable();
      

        
    }
}
