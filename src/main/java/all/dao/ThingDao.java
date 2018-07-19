package all.dao;

import all.entity.Thing;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ThingDao extends JpaRepository<Thing, Integer> {
}
