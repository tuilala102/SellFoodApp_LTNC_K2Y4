/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.response;

import java.util.List;
import stackjava.com.sbrestful.entities.Sale;

/**
 *
 * @author Admin
 */
public class SaleResponse {
    private List<Sale> data;

    public List<Sale> getData() {
        return data;
    }

    public void setData(List<Sale> data) {
        this.data = data;
    }
}
