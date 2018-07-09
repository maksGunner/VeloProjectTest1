package all.dao;

import all.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDAO extends JpaRepository <User, Integer> {

    User findUserByUsername (String username);

}
