/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package stackjava.com.sbrestful.controller;

import stackjava.com.sbrestful.response.CategoryResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import stackjava.com.sbrestful.repository.CategoryRepository;

import stackjava.com.sbrestful.entities.Category;
import stackjava.com.sbrestful.entities.User;

/**
 *
 * @author Admin
 */
@RestController
@RequestMapping("/api/admin")
@CrossOrigin
public class CategoryController {

            @Autowired
            CategoryRepository categoryRepository;
            private JdbcTemplate jdbcTemplate;
            //private JdbcTemplate jdbcTemplate;
	  
//	  /* ---------------- GET ALL CATEGORY ------------------------ */
	  @RequestMapping(value = "/categoryfood", method = RequestMethod.GET)
	  public ResponseEntity<CategoryResponse> getAllCategory() {
	    List<Category> listCategory = categoryRepository.findAll();
            CategoryResponse categoryResponse = new CategoryResponse();
            categoryResponse.setData(listCategory);
	    return new ResponseEntity<>(categoryResponse, HttpStatus.OK);
	  }
//          /* ---------------- CREATE NEW CATEGORY ------------------------ */
	  @RequestMapping(value = "/categoryfood", method = RequestMethod.POST)
          @Transactional
	  public ResponseEntity<String> createCategory(@RequestBody Category category) {
	    categoryRepository.save(category);
	    return new ResponseEntity<>("Created!", HttpStatus.CREATED);
	  }
	  /* ---------------- DELETE CATEGORY ------------------------ */
	  @RequestMapping(value = "/categoryfood/{id}", method = RequestMethod.DELETE)
	  public ResponseEntity<String> deleteCategoryById(@PathVariable Long id) {
          System.out.print(id);
	        Optional<Category> category = categoryRepository.findById(id);
	    if (category == null) {
	      return new ResponseEntity<String>("Not Found Category", HttpStatus.OK);
	    }
	    
	    categoryRepository.deleteById(id);
	    return new ResponseEntity<>("Deleted!", HttpStatus.OK);
//        String sql = "DELETE\n" + "categories\n" + "where id ="+id;
//        jdbcTemplate.query(sql);
//         return new ResponseEntity<>("Deleted", HttpStatus.OK);
     
	  }
//          /* ---------------- UPDATE CATEGORY ------------------------ */
	  @RequestMapping(value = "/categoryfood", method = RequestMethod.PUT)
          @Transactional
	  public ResponseEntity<String> updateCategory(@RequestBody Category category) {
	    category=categoryRepository.save(category);
	    return new ResponseEntity<>("Updated!", HttpStatus.OK);
	  }

}