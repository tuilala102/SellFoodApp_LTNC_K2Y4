package stackjava.com.sbrestful.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import stackjava.com.sbrestful.entities.Blog;
import stackjava.com.sbrestful.entities.Cart;
import stackjava.com.sbrestful.entities.CartFood;
import stackjava.com.sbrestful.entities.CartShort;
import stackjava.com.sbrestful.entities.User;
import stackjava.com.sbrestful.entities.OrderShortInfor;
import stackjava.com.sbrestful.repository.BlogRepository;
import stackjava.com.sbrestful.repository.CartRepository;
import stackjava.com.sbrestful.repository.OrderRepository;
import stackjava.com.sbrestful.repository.UserRepository;
import stackjava.com.sbrestful.request.AddFoodRequest;
import stackjava.com.sbrestful.request.PaymentRequest;
import stackjava.com.sbrestful.response.CategoryResponse;
import stackjava.com.sbrestful.response.BlogResponse;
import stackjava.com.sbrestful.response.OrderResponse;

/**
 *
 * @author Admin
 */
@RestController
@RequestMapping("/apiFood")
@CrossOrigin
public class AppController {

    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Autowired
    BlogRepository blogRepository;
    @Autowired
    CartRepository cartRepository;
    @Autowired
    OrderRepository orderRepository;
@Autowired
UserRepository userRepository;
    //--GET BLOG--//
    @RequestMapping(value = "/blogs1", method = RequestMethod.GET)
    public ResponseEntity getAllBlog() {

        List<Blog> listBlog = blogRepository.findAll();
        BlogResponse blogResponse = new BlogResponse();
        blogResponse.setData(listBlog);
        return new ResponseEntity<>(blogResponse, HttpStatus.OK);
    }
    //--get all item in cart--//
    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public ResponseEntity getAllItemCart(Long id_user) {
        Long cart = cartRepository.findByUser_id(id_user);
        String sql = "select a.id, a.name, a.image, b.quantity,a.promotion_price as PromotionPrice\n" +
"from food a join cart_food b on a.id = b.food_id \n" +
"where cart_id =?";
        List<CartShort> oC = jdbcTemplate.query(sql,  BeanPropertyRowMapper.newInstance(CartShort.class),cart);
        
        return new ResponseEntity<>(oC, HttpStatus.OK);
    }
    //--ADD CART--//
    @RequestMapping(value="/delCartItem", method=RequestMethod.DELETE)
    public ResponseEntity delItem(Long id_user, Long id_food){
        Long cart = cartRepository.findByUser_id(id_user);
        String sql = "delete from cart_food where cart_id =? and food_id=?";
        jdbcTemplate.update(sql, cart,id_food);
        return new ResponseEntity<>("Success!", HttpStatus.OK);
    }
    @RequestMapping(value = "/addCart", method = RequestMethod.POST)
    public ResponseEntity addCart(Long id_user, Long id_food) {

        Long cart = cartRepository.findByUser_id(id_user);
        String sql = "select * from cart_food \n"
                + " where cart_id =" + cart + " and food_id=" + id_food;
        List<AddFoodRequest> food = null;

        food = jdbcTemplate.query(sql,
                BeanPropertyRowMapper.newInstance(AddFoodRequest.class));

        if (food.size() == 0) {
            sql = "insert into cart_food (cart_id, food_id, quantity) values (" + Long.toString(cart) + ","
                    + Long.toString(id_food) + ",1)";
            jdbcTemplate.update(sql);
        } else {
            sql = "update cart_food set quantity = quantity+1 where cart_id = " + Long.toString(food.get(0).getCart_id()) + " and food_id = "
                    + Long.toString(food.get(0).getFood_id());
            jdbcTemplate.update(sql);
        }

        return new ResponseEntity<>("Success!", HttpStatus.OK);
    }

    //--UPDATE CART--//
    @RequestMapping(value = "/updateCart", method = RequestMethod.POST)
    public ResponseEntity updateCart(long id_user, long id_food, int quantity) {

        Long cart = cartRepository.findByUser_id(id_user);
        String sql = "update cart_food set quantity=" + Integer.toString(quantity) + " where cart_id = " + Long.toString(cart) + " and food_id ="
                + Long.toString(id_food);
        jdbcTemplate.update(sql);

        return new ResponseEntity<>("Success!", HttpStatus.OK);
    }

//	  /* ---------------- GET ALL ORDER ------------------------ */
    @RequestMapping(value = "/allOrder", method = RequestMethod.GET)
    public ResponseEntity<List<OrderShortInfor>> getAllOrder(Long user_id) {
        String sql = "select id, created_time,  payment_method, status, total_price from orders where user_id=?";
        List<OrderShortInfor> listOrder = jdbcTemplate.query(sql,
                BeanPropertyRowMapper.newInstance(OrderShortInfor.class), user_id);

        return new ResponseEntity<>(listOrder, HttpStatus.OK);
    }

    @RequestMapping(value = "/paymentFromCart", method = RequestMethod.POST)
    public ResponseEntity<String> paymentFromCart(Long user_id, @RequestBody PaymentRequest p) {
        Date d = new Date();
        Long id_order = d.getTime();
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        String formattedDate = dateFormat.format(d);
        Long cart = cartRepository.findByUser_id(user_id);
        String sql_create_order = "insert into orders(id, customer_address, customer_name, status, user_id ,created_time, customer_message, payment_method, total_price)values(?, ?, ?,0,?,?,'OK',N'Tiền mặt', ?)";
        jdbcTemplate.update(sql_create_order, id_order, p.address, p.name, user_id, formattedDate, p.pay);

        String sql = "insert into order_food (order_id, food_id, quantity) select ?, food_id, quantity from cart_food where cart_id =?";
        jdbcTemplate.update(sql, id_order, cart);

//        sql = "update orders set ToTal_Price = (select sum(promotion_price * quantity) from order_food a join Food b on a.food_id = b.ID where order_id = ?)where id = ?";
//        jdbcTemplate.update(sql, id_order, id_order);
        sql = "delete from cart_food where cart_id =?";
        jdbcTemplate.update(sql, cart);
        return new ResponseEntity<String>("Success", HttpStatus.OK);
    }
    @RequestMapping(value = "/orderShort", method = RequestMethod.GET)
    public ResponseEntity getAllItemOrder(Long id_order) {
        
        String sql = "select a.id, a.name, a.image, b.quantity,a.promotion_price as PromotionPrice\n" +
"from food a join order_food b on a.id = b.food_id \n" +
"where order_id =?";
        List<CartShort> oC = jdbcTemplate.query(sql,  BeanPropertyRowMapper.newInstance(CartShort.class),id_order);
        
        return new ResponseEntity<>(oC, HttpStatus.OK);
    }
    @RequestMapping(value = "/userInfor", method = RequestMethod.GET)
    public ResponseEntity getinfor(Long id_user) {
        Optional<User> infor =         userRepository.findById(id_user);
        return new ResponseEntity<>(infor, HttpStatus.OK);
    }
}
