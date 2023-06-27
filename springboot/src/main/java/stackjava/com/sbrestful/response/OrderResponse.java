package stackjava.com.sbrestful.response;

import java.util.List;
import stackjava.com.sbrestful.entities.Order;
/**
 *
 * @author Admin
 */
public class OrderResponse {
    private List<Order> data;

    public List<Order> getData() {
        return data;
    }

    public void setData(List<Order> data) {
        this.data = data;
    }
} 