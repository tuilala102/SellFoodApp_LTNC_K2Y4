/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.request;

/**
 *
 * @author ADMIN
 */
public class FoodRequest {
    public String Name;
    public String Alias;
    public String Image;
    public int OriginPrice;
    public int PromotionPrice;
    public String Description;
    public int Status;

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getAlias() {
        return Alias;
    }

    public void setAlias(String Alias) {
        this.Alias = Alias;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
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

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public int getStatus() {
        return Status;
    }

    public void setStatus(int Status) {
        this.Status = Status;
    }
    
}
