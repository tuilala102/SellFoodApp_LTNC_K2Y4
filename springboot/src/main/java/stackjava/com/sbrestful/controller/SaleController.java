/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import stackjava.com.sbrestful.entities.Sale;

/**
 *
 * @author Admin
 */
@CrossOrigin
@RestController
@RequestMapping("/apiSale")
public class SaleController {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    @RequestMapping(value = "/sale", method = RequestMethod.GET)
    public ResponseEntity getAll(){
        String sql = "select top 5 alias, name, origin_price, promotion_price\n" + "from food, order_food\n" + "where food.id = order_food.food_id";
        List<Sale> customers = jdbcTemplate.query(sql,
                BeanPropertyRowMapper.newInstance(Sale.class));
         return new ResponseEntity<>(customers, HttpStatus.OK);
     }
}
