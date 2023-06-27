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
import stackjava.com.sbrestful.entities.AllOrder;
import stackjava.com.sbrestful.entities.BestSelling;

/**
 *
 * @author Admin
 */
@RestController
@RequestMapping("/apiOrder")
@CrossOrigin
public class AllOrderController {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @RequestMapping(value = "/allorder", method = RequestMethod.GET)
    public ResponseEntity getAll() {
        String sql = "select B.allorder allorder, A.neworder neworder \n"
                + "from(select count(*) neworder from \n"
                + "Orders where datediff(day, convert(datetime, created_time, 103), getdate()) < 32) A, \n"
                + "(select count(*) allorder from orders) B ";
        List<AllOrder> sells = jdbcTemplate.query(sql,
                BeanPropertyRowMapper.newInstance(AllOrder.class));
        return new ResponseEntity<>(sells, HttpStatus.OK);
    }
}
