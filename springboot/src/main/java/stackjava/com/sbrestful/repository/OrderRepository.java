/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import stackjava.com.sbrestful.response.OrderAcceptChild;
import stackjava.com.sbrestful.entities.Order;
/**
 *
 * @author ADMIN
 */
@Repository
public interface OrderRepository extends JpaRepository<Order, Long>{
    List<Order> findByStatus(int Status);
}
