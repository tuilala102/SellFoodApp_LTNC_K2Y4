package stackjava.com.sbrestful.request;

/**
 *
 * @author Admin
 */
public class AddFoodRequest {
    private long cart_id;
    private long food_id;
    private int quantity;
    public long getCart_id() {
        return cart_id;
    }

    public void setCart_id(long cart_id) {
        this.cart_id = cart_id;
    }

    public long getFood_id() {
        return food_id;
    }

    public void setFood_id(long food_id) {
        this.food_id = food_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }


}