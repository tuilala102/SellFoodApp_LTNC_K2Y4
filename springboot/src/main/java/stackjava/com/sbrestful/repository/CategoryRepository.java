/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stackjava.com.sbrestful.repository;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import stackjava.com.sbrestful.entities.Category;

/**
 *
 * @author Admin
 */
@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
  
  
  public Optional<Category> findById(Long id);
  @Query(value = "SELECT coalesce(max(id), 0) FROM Category") 
    public Long getMaxId();
  
}