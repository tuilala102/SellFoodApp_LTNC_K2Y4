/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import stackjava.com.sbrestful.entities.Promotion;

/**
 *
 * @author ADMIN
 */
@Repository
public interface PromotionRepository extends JpaRepository<Promotion, Long> {
  

  
}