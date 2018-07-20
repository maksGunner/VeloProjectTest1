package all.service;

import all.dao.ThingDao;
import all.entity.Thing;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ThingServiceImpl implements ThingService {

    @Autowired
    private ThingDao thingDao;

    public Thing save(Thing thing) {
        return thingDao.save(thing);
    }

    public List<Thing> findAll() {
        return thingDao.findAll();
    }

    public Thing findOne(int id) {
        return thingDao.findOne(id);
    }
    public List<Thing> findAllByCategory(String category){
        return thingDao.findAllByCategory(category);
    }


}
