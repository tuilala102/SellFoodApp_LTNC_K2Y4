/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.entities;

import javax.persistence.CascadeType;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import stackjava.com.sbrestful.entities.compositekey.KeyCartFood;

/**
 *
 * @author ADMIN
 */
@Entity
@Table(name = "cart_food")
public class CartFood {
    public CartFood() {}
    @EmbeddedId
    private KeyCartFood id;
    
    private int quantity;
    @ManyToOne(cascade = CascadeType.ALL)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @MapsId("cart_id")
    @JoinColumn(name = "cart_id")
    private Cart cart;

    @ManyToOne(cascade = CascadeType.ALL)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @MapsId("food_id")
    @JoinColumn(name = "food_id")
    private Food food;

    public CartFood(KeyCartFood id, int quantity, Cart cart, Food food) {
        this.id = id;
        this.quantity = quantity;
        this.cart = cart;
        this.food = food;
    }

    public KeyCartFood getId() {
        return id;
    }

    public void setId(KeyCartFood id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public Food getFood() {
        return food;
    }

    public void setFood(Food food) {
        this.food = food;
    }
    
}
