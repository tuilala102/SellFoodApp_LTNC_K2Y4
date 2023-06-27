/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.entities;

import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Size;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

/**
 *
 * @author ADMIN
 */
@Entity
@Table(name = "Orders", 
    uniqueConstraints = { 
      @UniqueConstraint(columnNames = "ID")
    })
public class Order {
    @Id
    private Long ID;
    
    @Size(max = 250)
    @Column(columnDefinition = "NVARCHAR(250) NOT NULL")
    private String CustomerName;
    
    @Size(max = 250)
    @Column(columnDefinition = "NVARCHAR(250) NOT NULL")
    private String CustomerAddress;
    
    @Size(max = 250)
    @Column(columnDefinition = "NVARCHAR(250) ")
    private String CustomerMessage;
    
    @Size(max = 250)
    @Column(columnDefinition = "NVARCHAR(250) ")
    private String PaymentMethod;
    
    @Size(max = 250)
    @Column(columnDefinition = "NVARCHAR(250) ")
    private String CreatedTime;
    
    private int status;
    private int TotalPrice;

    public int getStatus() {
        return status;
    }

    public void setStatus(int Status) {
        this.status = Status;
    }

    public int getTotalPrice() {
        return TotalPrice;
    }

    public void setTotalPrice(int TotalPrice) {
        this.TotalPrice = TotalPrice;
    }
    
    @ManyToOne 
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    @OnDelete(action = OnDeleteAction.NO_ACTION)
    private User user;
    
    @OneToMany(mappedBy = "order",
        cascade = CascadeType.ALL,
        orphanRemoval = true)
    @OnDelete(action = OnDeleteAction.CASCADE)
    private List<OrderFood> order_food;
    public Order(){}
    public Order(Long ID, String CustomerName, String CustomerAddress, String CustomerMessage, String PaymentMethod, String CreatedTime, User user, List<OrderFood> order_food) {
        this.ID = ID;
        this.CustomerName = CustomerName;
        this.CustomerAddress = CustomerAddress;
        this.CustomerMessage = CustomerMessage;
        this.PaymentMethod = PaymentMethod;
        this.CreatedTime = CreatedTime;
        this.user = user;
        this.order_food = order_food;
    }

    public List<OrderFood> getOrder_food() {
        return order_food;
    }

    public void setOrder_food(List<OrderFood> order_food) {
        this.order_food = order_food;
    }
    
    

    public Long getID() {
        return ID;
    }

    public void setID(Long ID) {
        this.ID = ID;
    }

    public String getCustomerName() {
        return CustomerName;
    }

    public void setCustomerName(String CustomerName) {
        this.CustomerName = CustomerName;
    }

    public String getCustomerAddress() {
        return CustomerAddress;
    }

    public void setCustomerAddress(String CustomerAddress) {
        this.CustomerAddress = CustomerAddress;
    }

    public String getCustomerMessage() {
        return CustomerMessage;
    }

    public void setCustomerMessage(String CustomerMessage) {
        this.CustomerMessage = CustomerMessage;
    }

    public String getPaymentMethod() {
        return PaymentMethod;
    }

    public void setPaymentMethod(String PaymentMethod) {
        this.PaymentMethod = PaymentMethod;
    }

    public String getCreatedTime() {
        return CreatedTime;
    }

    public void setCreatedTime(String CreatedTime) {
        this.CreatedTime = CreatedTime;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    
}
