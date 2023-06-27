/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.entities;
import com.fasterxml.jackson.annotation.JsonIgnore;
import java.math.BigInteger;
import java.util.List;
import javax.persistence.*;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

/**
 *
 * @author ADMIN
 */
@Entity
@Table(name = "Food", 
    uniqueConstraints = { 
      @UniqueConstraint(columnNames = "Id"),
      
    })
public class Food {
    public Food() {}
    @Id
    protected  Long Id;
    @Column(columnDefinition = "NVARCHAR(250) NOT NULL")
    protected String Name;
    protected String Alias;
    protected String Image;
    protected int OriginPrice;
    protected int PromotionPrice;
    @Column(columnDefinition = "NVARCHAR(250)")
    protected String Description;
    protected BigInteger CreatedDate;
    protected String CreatedBy;
    protected BigInteger UpdatedDate;
    protected String UpdatedBy;
    protected int ViewCount;
    protected int Status;
        @ManyToOne 
        @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "category_id", referencedColumnName = "id")
    private Category category;

        @OneToMany(mappedBy = "food",
        cascade = CascadeType.ALL,
        orphanRemoval = true)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonIgnore
    private List<OrderFood> order_food;
    
        
    public List<OrderFood> getOrder_food() {
        return order_food;
    }

    public void setOrder_food(List<OrderFood> order_food) {
        this.order_food = order_food;
    }
        
    @OneToMany(mappedBy = "food",
        cascade = CascadeType.ALL,
        orphanRemoval = true)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonIgnore
    private List<CartFood> cart_food;

    public List<CartFood> getCart_food() {
        return cart_food;
    }

    public void setCart_food(List<CartFood> cart_food) {
        this.cart_food = cart_food;
    }
    
    
        @OneToMany(mappedBy="food",cascade = CascadeType.ALL,
        orphanRemoval = true)
        @OnDelete(action = OnDeleteAction.CASCADE)
        private List<Comment> comments;
        
    public Food(Long Id, String Name, String Alias, String Image, int OriginPrice, int PromotionPrice, int CategoryID, BigInteger CreatedDate, String CreatedBy, BigInteger UpdatedDate, String UpdatedBy, int ViewCount, int Status, Category category) {
        this.Id = Id;
        this.Name = Name;
        this.Alias = Alias;
        this.Image = Image;
        this.OriginPrice = OriginPrice;
        this.PromotionPrice = PromotionPrice;
            
        this.CreatedDate = CreatedDate;
        this.CreatedBy = CreatedBy;
        this.UpdatedDate = UpdatedDate;
        this.UpdatedBy = UpdatedBy;
        this.ViewCount = ViewCount;
        this.Status = Status;
        this.category = category;
    }

    public Food(Long Id, String Name, String Alias, String Image, int OriginPrice, int PromotionPrice, int CategoryID, BigInteger CreatedDate, String CreatedBy, BigInteger UpdatedDate, String UpdatedBy, int ViewCount, int Status, Category category, List<Comment> comments) {
        this.Id = Id;
        this.Name = Name;
        this.Alias = Alias;
        this.Image = Image;
        this.OriginPrice = OriginPrice;
        this.PromotionPrice = PromotionPrice;
        
        this.CreatedDate = CreatedDate;
        this.CreatedBy = CreatedBy;
        this.UpdatedDate = UpdatedDate;
        this.UpdatedBy = UpdatedBy;
        this.ViewCount = ViewCount;
        this.Status = Status;
        this.category = category;
        this.comments = comments;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public Long getId() {
        return Id;
    }

    public void setId(Long Id) {
        this.Id = Id;
    }

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



    public BigInteger getCreatedDate() {
        return CreatedDate;
    }

    public void setCreatedDate(BigInteger CreatedDate) {
        this.CreatedDate = CreatedDate;
    }

    public String getCreatedBy() {
        return CreatedBy;
    }

    public void setCreatedBy(String CreatedBy) {
        this.CreatedBy = CreatedBy;
    }

    public BigInteger getUpdatedDate() {
        return UpdatedDate;
    }

    public void setUpdatedDate(BigInteger UpdatedDate) {
        this.UpdatedDate = UpdatedDate;
    }

    public String getUpdatedBy() {
        return UpdatedBy;
    }

    public void setUpdatedBy(String UpdatedBy) {
        this.UpdatedBy = UpdatedBy;
    }

    public int getViewCount() {
        return ViewCount;
    }

    public void setViewCount(int ViewCount) {
        this.ViewCount = ViewCount;
    }

    public int getStatus() {
        return Status;
    }

    public void setStatus(int Status) {
        this.Status = Status;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
    
    
}

    
