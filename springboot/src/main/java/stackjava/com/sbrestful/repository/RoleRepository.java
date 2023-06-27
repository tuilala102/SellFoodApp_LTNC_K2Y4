package stackjava.com.sbrestful.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import stackjava.com.sbrestful.entities.ERole;
import stackjava.com.sbrestful.entities.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
  Optional<Role> findByName(ERole name);
}
