/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logic;

/**
 *
 * @author JNE
 */
public class Person {
    int id;
    private String username;
    private String password;

    public Person(int id, String username, String password) {
        this.username = username;
        this.password = password;
        this.id = id;
     
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Person{" + "username=" + username + ", password=" + password + ", id=" + id + '}';
    }
    
}
