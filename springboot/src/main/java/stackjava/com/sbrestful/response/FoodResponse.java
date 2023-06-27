package stackjava.com.sbrestful.response;


import java.util.List;
import stackjava.com.sbrestful.entities.Food;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author ADMIN
 */
public class FoodResponse {
    private List<Food> data;

    public List<Food> getData() {
        return data;
    }

    public void setData(List<Food> data) {
        this.data = data;
    }
}
