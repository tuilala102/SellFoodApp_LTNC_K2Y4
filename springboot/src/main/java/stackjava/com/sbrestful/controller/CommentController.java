/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import stackjava.com.sbrestful.repository.CommentRepository;
import stackjava.com.sbrestful.entities.Comment;
import stackjava.com.sbrestful.repository.FoodRepository;
import stackjava.com.sbrestful.request.CommentRequest;

/**
 *
 * @author ADMIN
 */
@RestController
@RequestMapping("/apiFood")
@CrossOrigin(origins = "", maxAge = 3600)
public class CommentController {
         @Autowired
     CommentRepository commentRepository;
         @Autowired
         FoodRepository foodRepository;
     @Autowired
     private JdbcTemplate jdbcTemplate;
     
     @RequestMapping(value = "/comments", method = RequestMethod.GET)
     public ResponseEntity<List<Comment>> getCommentsByFoodId(@RequestParam("idfood") Long idFood) {
         List<Comment> res = commentRepository.findByFoodId(idFood);
         return new ResponseEntity<>(res, HttpStatus.OK);
     }
     
     @RequestMapping(value = "/comments", method = RequestMethod.POST)
     public ResponseEntity<String> postComment(@RequestBody CommentRequest cmt){
         Comment cmt_1 = new Comment();
         cmt_1.setID(commentRepository.getMaxId()+1);
         cmt_1.setAuthor(cmt.getAuthor());
         cmt_1.setContent(cmt.getContent());
         cmt_1.setFood(foodRepository.getById(cmt.getFood_id()));
         commentRepository.save(cmt_1);
         return new ResponseEntity<>("Created!", HttpStatus.OK);
     }
}
