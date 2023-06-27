package stackjava.com.sbrestful.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import stackjava.com.sbrestful.entities.Promotion;
import stackjava.com.sbrestful.repository.PromotionRepository;
import stackjava.com.sbrestful.response.PromotionResponse;

/**
 *
 * @author ADMIN
 */
@RestController
@RequestMapping("/api/admin")
@CrossOrigin
public class PromotionController {
	
            @Autowired
            PromotionRepository promotionRepository;
	  
	  /* ---------------- GET ALL  ------------------------ */
	  @RequestMapping(value = "/promotions", method = RequestMethod.GET)
	  public ResponseEntity<PromotionResponse> getAllPromotion() {
	    List<Promotion> listPromotion = promotionRepository.findAll();
            PromotionResponse promotionResponse = new PromotionResponse();
            promotionResponse.setData(listPromotion);
	    return new ResponseEntity<>(promotionResponse, HttpStatus.OK);
	  }
	  @RequestMapping(value = "/promotions-for-order", method = RequestMethod.GET)
	  public ResponseEntity<PromotionResponse> getAllPromotionForOrder(Long price) {
	    List<Promotion> listPromotion = promotionRepository.findAll();
            PromotionResponse promotionResponse = new PromotionResponse();
            List<Promotion> filteredPromotions = new ArrayList<>();

            for (Promotion promotion : listPromotion) {
                int aliasValue = Integer.parseInt(promotion.getAlias());
                
                if (aliasValue < price) {
                    filteredPromotions.add(promotion);
                }
            }
            promotionResponse.setData(filteredPromotions);
	    return new ResponseEntity<>(promotionResponse, HttpStatus.OK);
	  }
          /* ---------------- CREATE NEW FOOD ------------------------ */
	  @RequestMapping(value = "/promotions", method = RequestMethod.POST)
          @Transactional
	  public ResponseEntity<String> createPromotion(@RequestBody Promotion promotion) {
	    promotionRepository.save(promotion);
	    return new ResponseEntity<>("Created!", HttpStatus.CREATED);
	  }
	  /* ---------------- DELETE FOOD ------------------------ */
	  @RequestMapping(value = "/promotions/{id}", method = RequestMethod.DELETE)
	  public ResponseEntity<String> deletePromotionById(@PathVariable Long id) {
	        Optional<Promotion> promotion = promotionRepository.findById(id);
	    if (promotion == null) {
	      return new ResponseEntity<String>("Not Found Food", HttpStatus.OK);
	    }
	    
	    promotionRepository.deleteById(id);
	    return new ResponseEntity<>("Deleted!", HttpStatus.OK);
	  }
          /* ---------------- UPDATE FOOD ------------------------ */
	  @RequestMapping(value = "/promotions", method = RequestMethod.PUT)
          @Transactional
	  public ResponseEntity<String> updatePromotion(@RequestBody Promotion promotion) {
	    promotion = promotionRepository.save(promotion);
	    return new ResponseEntity<>("updated!", HttpStatus.OK);
	  }
	  
	
}