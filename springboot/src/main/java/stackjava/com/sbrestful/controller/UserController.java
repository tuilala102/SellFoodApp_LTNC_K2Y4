package stackjava.com.sbrestful.controller;

import stackjava.com.sbrestful.response.UserResponse;
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
import stackjava.com.sbrestful.entities.CountCustomer;
import stackjava.com.sbrestful.repository.UserRepository;
import stackjava.com.sbrestful.entities.User;

/**
 *
 * @author Admin
 */
@RestController
@RequestMapping("/api/admin")
@CrossOrigin
public class UserController {

    @Autowired
    UserRepository userRepository;
    //private JdbcTemplate jdbcTemplate;

//	  /* ---------------- GET ALL USER ------------------------ */
    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public ResponseEntity<UserResponse> getAllUsers() {
        List<User> listUser = userRepository.findAll();
        UserResponse userResponse = new UserResponse();
        userResponse.setData(listUser);
        return new ResponseEntity<>(userResponse, HttpStatus.OK);
    }
//          /* ---------------- CREATE NEW USER ------------------------ */

    @RequestMapping(value = "/users", method = RequestMethod.POST)
    @Transactional
    public ResponseEntity<String> createUser(@RequestBody User user) {
        userRepository.save(user);
        return new ResponseEntity<>("Created!", HttpStatus.CREATED);
    }

    /* ---------------- DELETE USER ------------------------ */
    @RequestMapping(value = "/users/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<String> deleteUseryById(@PathVariable Long id) {
        Optional<User> user = userRepository.findById(id);
        if (user == null) {
            return new ResponseEntity<String>("Not Found User", HttpStatus.OK);
        }
        userRepository.deleteById(id);
        return new ResponseEntity<>("Deleted!", HttpStatus.OK);
    }
//          /* ---------------- UPDATE USER ------------------------ */

    @RequestMapping(value = "/users", method = RequestMethod.PUT)
    @Transactional
    public ResponseEntity<String> updateCategory(@RequestBody User user) {
        user = userRepository.save(user);
        return new ResponseEntity<>("Updated!", HttpStatus.OK);
    }

    @Autowired
    private JdbcTemplate jdbcTemplate;
    @RequestMapping(value = "/customer", method = RequestMethod.GET)
    @Transactional
    public ResponseEntity getCus() {
        String sql = "Select * \n"
                + "from(select coalesce(COUNT(*),0) Customer from users) B, \n"
                + "(select coalesce(COUNT(*),0) NewRegister from users where datediff(day, convert(datetime, users.created_day), getdate()) < 7) A";
        List<CountCustomer> customers = jdbcTemplate.query(sql,
                BeanPropertyRowMapper.newInstance(CountCustomer.class));
        return new ResponseEntity<>(customers, HttpStatus.OK);
    }
}
