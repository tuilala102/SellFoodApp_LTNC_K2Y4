/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package stackjava.com.sbrestful.response;

import java.util.List;
import stackjava.com.sbrestful.entities.Category;
/**
 *
 * @author Admin
 */
public class CategoryResponse {
    private List<Category> data;

    public List<Category> getData() {
        return data;
    }

    public void setData(List<Category> data) {
        this.data = data;
    }
}