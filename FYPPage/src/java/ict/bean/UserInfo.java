/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.bean;

import java.io.Serializable;


public class UserInfo implements Serializable {

    private String username;
    private String password;

    public UserInfo() {
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
