/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.bean;

import java.io.Serializable;


public class UserInfo implements Serializable {

    private String username;
    private String password;
    private String position;
    private String tel;
    private String age;

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

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }
    
}
