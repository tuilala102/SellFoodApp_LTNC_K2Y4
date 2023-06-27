/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.controller;

import stackjava.com.sbrestful.response.BlogResponse;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import stackjava.com.sbrestful.repository.BlogRepository;
import stackjava.com.sbrestful.entities.Blog;

/**
 *
 * @author ADMIN
 */
@RestController
@RequestMapping("/apiFood")
@CrossOrigin(origins = "*", maxAge = 3600)
public class BlogController {
    @Autowired
    BlogRepository blogRepo;
    	  @RequestMapping(value = "/blogs", method = RequestMethod.GET)
	  public ResponseEntity<BlogResponse> getAllBlogo() {
	    List<Blog> listBlog = blogRepo.findAll();
            BlogResponse foodResponse = new BlogResponse();
            foodResponse.setData(listBlog);
	    return new ResponseEntity<>(foodResponse, HttpStatus.OK);
	  }
    
}
