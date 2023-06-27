/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import stackjava.com.sbrestful.entities.Blog;
/**
 *
 * @author ADMIN
 */
public interface BlogRepository extends JpaRepository<Blog, Long>{
    
}
