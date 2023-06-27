package stackjava.com.sbrestful.repository;

import stackjava.com.sbrestful.entities.ERole;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import stackjava.com.sbrestful.entities.User;
import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
  Optional<User> findByUsername(String username);
  List<User> findByRoles_name(ERole role);
  Boolean existsByUsername(String username);

  Boolean existsByEmail(String email);
  
}
