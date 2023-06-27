/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.response;

import java.math.BigInteger;
import stackjava.com.sbrestful.entities.Category;
import stackjava.com.sbrestful.entities.Food;

/**
 *
 * @author ADMIN
 */
public class OrderAcceptGrandChild extends Food {
    public int quantity;

    public OrderAcceptGrandChild(int quantity, Long Id, String Name, String Alias, String Image, int OriginPrice, int PromotionPrice, int CategoryID, BigInteger CreatedDate, String CreatedBy, BigInteger UpdatedDate, String UpdatedBy, int ViewCount, int Status, Category category) {
        super(Id, Name, Alias, Image, OriginPrice, PromotionPrice, CategoryID, CreatedDate, CreatedBy, UpdatedDate, UpdatedBy, ViewCount, Status, category);
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    
    
}
