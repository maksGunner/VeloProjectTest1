package all.service;

import all.entity.Thing;

import java.util.List;

public interface ThingService {
    public Thing save(Thing thing);
    public List<Thing> findAll();
    public Thing findOne(int id);
}
