/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.controller;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import stackjava.com.sbrestful.repository.OrderRepository;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import stackjava.com.sbrestful.entities.Order;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import stackjava.com.sbrestful.entities.InfoCusOrder;

/**
 *
 * @author ADMIN
 */
@RestController
@RequestMapping("/apiFood")
@CrossOrigin(origins = "", maxAge = 3600)
public class OrderController {

    @Autowired
    OrderRepository orderRepository;
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @GetMapping("/all")
    public String allAccess() {
        return "Public Content.";
    }

    @GetMapping("/orders")
    public ResponseEntity<List<Order>> getAll() {
        List<Order> listOrder = orderRepository.findAll();
        return new ResponseEntity<>(listOrder, HttpStatus.OK);
    }

    @GetMapping("/filterOrders")
    public ResponseEntity<List<Order>> getOrder(int status) {
        List<Order> listOrder = orderRepository.findByStatus(status);
        return new ResponseEntity<>(listOrder, HttpStatus.OK);
    }
//--UPDATE STATUS-----//

    @RequestMapping(value = "/orders", method = RequestMethod.PUT)
    @Transactional
    public ResponseEntity<String> updateStatus( int status,  String id) {
        String updateQuery = "Update orders set status=?  where id=?";

        jdbcTemplate.update(updateQuery, status, id);
        return new ResponseEntity<>("Updated!", HttpStatus.OK);
    }
//    get cart

    @RequestMapping(value = "/cart1", method = RequestMethod.GET)
    @Transactional
    public ResponseEntity getcart() {
        String sql = "Select id, customer_name, status from orders where status = 0";
        List<InfoCusOrder> carts = jdbcTemplate.query(sql,
                BeanPropertyRowMapper.newInstance(InfoCusOrder.class));
        return new ResponseEntity<>(carts, HttpStatus.OK);
    }
}
