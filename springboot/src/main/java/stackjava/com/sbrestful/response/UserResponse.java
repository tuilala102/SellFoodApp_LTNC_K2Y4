/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package stackjava.com.sbrestful.response;

import java.util.List;
import stackjava.com.sbrestful.entities.User;
/**
 *
 * @author Admin
 */
public class UserResponse {
    private List<User> data;

    public List<User> getData() {
        return data;
    }

    public void setData(List<User> data) {
        this.data = data;
    }
}