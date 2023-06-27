/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.response;

import java.util.List;
import stackjava.com.sbrestful.entities.Promotion;

/**
 *
 * @author ADMIN
 */
public class PromotionResponse {
    private List<Promotion> data;

    public List<Promotion> getData() {
        return data;
    }

    public void setData(List<Promotion> data) {
        this.data = data;
    }
}