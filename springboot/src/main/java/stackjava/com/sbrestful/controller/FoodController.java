/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.controller;

import stackjava.com.sbrestful.response.FoodResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import stackjava.com.sbrestful.repository.FoodRepository;

import stackjava.com.sbrestful.entities.Food;
import stackjava.com.sbrestful.entities.User;

/**
 *
 * @author ADMIN
 */
@RestController
@RequestMapping("/apiFood")
@CrossOrigin(origins = "", maxAge = 3600)
public class FoodController {
	
            @Autowired
            FoodRepository foodRepository;
            @Autowired
            JdbcTemplate jdbcTemplate;
	  
	  /* ---------------- GET ALL FOOD ------------------------ */
	  @RequestMapping(value = "/foods", method = RequestMethod.GET)
	  public ResponseEntity<FoodResponse> getAllFood() {
	    List<Food> listFood = foodRepository.findAll();
            FoodResponse foodResponse = new FoodResponse();
            foodResponse.setData(listFood);
	    return new ResponseEntity<>(foodResponse, HttpStatus.OK);
	  }
          @RequestMapping(value = "/food", method=RequestMethod.GET)
          public ResponseEntity getFood(Long id){
              Optional<Food> food = foodRepository.findById(id);
              return new ResponseEntity<>(food, HttpStatus.OK);
          }
          /* ---------------- CREATE NEW FOOD ------------------------ */
	  @RequestMapping(value = "/foods", method = RequestMethod.POST)
          @Transactional
	  public ResponseEntity<String> createFood(@RequestBody Food food) {
              Long newID = foodRepository.getMaxId()+1;
              food.setId(newID);
	    foodRepository.save(food);
	    return new ResponseEntity<>("Created!", HttpStatus.CREATED);
	  }
	  /* ---------------- DELETE FOOD ------------------------ */
	  @RequestMapping(value = "/foods/{id}", method = RequestMethod.DELETE)
	  public ResponseEntity<String> deleteFoodById(@PathVariable Long id) {
	        Optional<Food> food = foodRepository.findById(id);
	    if (food == null) {
	      return new ResponseEntity<String>("Not Found Food", HttpStatus.OK);
	    }
	    String sql = "Delete from food where id = ?";
	    jdbcTemplate.update(sql, id);
	    return new ResponseEntity<>("Deleted!", HttpStatus.OK);
	  }
          /* ---------------- UPDATE FOOD ------------------------ */
          @RequestMapping(value = "/foods", method = RequestMethod.PUT)
	  public ResponseEntity<String> updateFood(@RequestBody Food food) {
            String sql = "update food set alias=?, created_by=?, created_date=?, description=?, image=?, name=?, origin_price=?, promotion_price=?, status=?, updated_by=?,updated_date=?, view_count=?, category_id=? where id=?";
	    jdbcTemplate.update(sql, food.getAlias(), food.getCreatedBy(), food.getCreatedDate(), food.getDescription(),food.getImage(), food.getName(), food.getOriginPrice(), food.getPromotionPrice(), food.getStatus(), food.getUpdatedBy(), food.getUpdatedDate(), food.getViewCount(), food.getCategory().getID(), food.getId());
	    return new ResponseEntity<>("updated!", HttpStatus.OK);
	  }
	  
	  
}
