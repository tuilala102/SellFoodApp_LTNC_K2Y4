/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import stackjava.com.sbrestful.entities.compositekey.KeyOrderFood;

/**
 *
 * @author ADMIN
 */
@Entity
@Table(name = "order_food")
public class OrderFood {
    public OrderFood(){}
    @EmbeddedId
    private KeyOrderFood id;
    
    private int quantity;
    
    @ManyToOne
    @MapsId("food_id")
    @JoinColumn(name = "food_id")
    @OnDelete(action = OnDeleteAction.CASCADE)
    private Food food; 
    
    @JsonIgnore
    @ManyToOne
    @MapsId("order_id")
    @JoinColumn(name = "order_id")
    @OnDelete(action = OnDeleteAction.NO_ACTION)
    private Order order;

    public OrderFood(KeyOrderFood id, int quantity, Food food, Order order) {
        this.id = id;
        this.quantity = quantity;
        this.food = food;
        this.order = order;
    }

    public KeyOrderFood getId() {
        return id;
    }

    public void setId(KeyOrderFood id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Food getFood() {
        return food;
    }

    public void setFood(Food food) {
        this.food = food;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }
    
}
