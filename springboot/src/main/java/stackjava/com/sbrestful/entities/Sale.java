/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.entities;

/**
 *
 * @author Admin
 */
public class Sale {
    private String Alias;
    private String Name;
    private int OriginPrice;
    private int PromotionPrice;

    public String getAlias() {
        return Alias;
    }

    public void setAlias(String Alias) {
        this.Alias = Alias;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public int getOriginPrice() {
        return OriginPrice;
    }

    public void setOriginPrice(int OriginPrice) {
        this.OriginPrice = OriginPrice;
    }

    public int getPromotionPrice() {
        return PromotionPrice;
    }

    public void setPromotionPrice(int PromotionPrice) {
        this.PromotionPrice = PromotionPrice;
    }
}
