package all.dao;

import all.entity.Thing;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ThingDao extends JpaRepository<Thing, Integer> {
    List<Thing> findAllByCategory(String category);
}
