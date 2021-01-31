/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.db;


public class CreateUserTable {

    public static void main(String arg[]) {

        String url = "jdbc:derby://localhost:1527/ITP4912_DB";
        String username = "APP";
        String password = "APP";

        UserDB userDB = new UserDB(url, username, password);
        //userDB.createUserInfoTable();
        userDB.addUser("abc", "123","Staff","12345678");
    }
}
