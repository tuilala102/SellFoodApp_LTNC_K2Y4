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
import stackjava.com.sbrestful.entities.Chart;
import stackjava.com.sbrestful.entities.Revenue;

/**
 *
 * @author Admin
 */
@RestController
@RequestMapping("/apiAdmin")
@CrossOrigin
public class ChartController {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @RequestMapping(value = "/chart", method = RequestMethod.GET)
    public ResponseEntity getAll() {
        String sql = "select month(convert(datetime,created_time,103)) thang,day(convert(datetime,created_time,103)) ngay, sum(total_price) tong \n"
                + " from orders where month(convert(datetime,created_time,103)) = month(getdate())\n"
                + " group by day(convert(datetime,created_time,103)), month(convert(datetime,created_time,103))";
        List<Chart> charts = jdbcTemplate.query(sql,
                BeanPropertyRowMapper.newInstance(Chart.class));
        return new ResponseEntity<>(charts, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/revenue", method = RequestMethod.GET)
    public ResponseEntity getRevenue() {
        String sql = "Select *  \n"
                + "from(select coalesce(SUM(total_price), 0) Inmonth  \n"
                + "from orders where month(GETDATE()) - month(CONVERT(INT, CONVERT(DATETIME, created_time,103))) = 0) B, \n"
                + "(select coalesce(SUM(total_price), 0) Lastmonth \n"
                + "from orders where month(GETDATE()) - month(CONVERT(INT, CONVERT(DATETIME, created_time,103))) = 1) A";
        List<Revenue> revenues = jdbcTemplate.query(sql,
                BeanPropertyRowMapper.newInstance(Revenue.class));
        return new ResponseEntity<>(revenues, HttpStatus.OK);
    }
    @RequestMapping(value = "/customer", method = RequestMethod.GET)
    public ResponseEntity getCustomer() {
        String sql = "Select *  \n"
                + "from(select coalesce(SUM(total_price), 0) Inmonth  \n"
                + "from orders where month(GETDATE()) - month(CONVERT(INT, CONVERT(DATETIME, created_time,103))) = 0) B, \n"
                + "(select coalesce(SUM(total_price), 0) Lastmonth \n"
                + "from orders where month(GETDATE()) - month(CONVERT(INT, CONVERT(DATETIME, created_time,103))) = 1) A";
        List<Revenue> revenues = jdbcTemplate.query(sql,
                BeanPropertyRowMapper.newInstance(Revenue.class));
        return new ResponseEntity<>(revenues, HttpStatus.OK);
    }
}
