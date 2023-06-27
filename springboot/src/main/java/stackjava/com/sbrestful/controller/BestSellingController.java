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
import stackjava.com.sbrestful.entities.BestSelling;

/**
 *
 * @author Admin
 */
@RestController
@RequestMapping("/apiSelling")
@CrossOrigin
public class BestSellingController {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @RequestMapping(value = "/selling", method = RequestMethod.GET)
    public ResponseEntity getAll() {
        String sql = "select top 5 food.id, food.name, count(*) quantity\n"
                + "from food join order_food on food.id = order_food.food_id\n"
                + "group by food.id, food.name\n"
                + "order by quantity desc ";
        List<BestSelling> sells = jdbcTemplate.query(sql,
                BeanPropertyRowMapper.newInstance(BestSelling.class));
        return new ResponseEntity<>(sells, HttpStatus.OK);
    }
}