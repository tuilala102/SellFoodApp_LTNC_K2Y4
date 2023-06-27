/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package stackjava.com.sbrestful.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import stackjava.com.sbrestful.entities.Comment;

/**
 *
 * @author ADMIN
 */
@Repository
public interface CommentRepository  extends JpaRepository<Comment, Long>{
     @Query(value = "SELECT coalesce(max(id), 0) FROM Comment") 
    public Long getMaxId();
     @Query(value = "SELECT * FROM comments c WHERE c.food_id = :foodid", nativeQuery = true)
     public List<Comment> findByFoodId(@Param("foodid") Long foodId);
  
}
