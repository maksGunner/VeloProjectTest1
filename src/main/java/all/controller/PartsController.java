package all.controller;

import all.entity.Thing;
import all.service.ThingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.File;

@Controller
@RequestMapping("/parts")
public class PartsController {

    @Autowired
    ThingService thingService;

    @GetMapping("/frame")
    public String frame(){
        File file = new File("frame1.png");
        Thing frame = new Thing();
        frame.setTitle("Frame");
        frame.setImg("/picsForDB/" + file.getName());
        System.out.println(frame.getImg());
        frame.setPrice(4455);
        thingService.save(frame);
        return "filter";
    }

    @GetMapping("/fork")
    public String fork(){
        return "filter";
    }

    @GetMapping("/cranks")
    public String cranks(){
        return "filter";
    }

    @GetMapping("/cassette")
    public String cassette(){
        return "filter";
    }

    @GetMapping("/derailleurs_front")
    public String derailleurs_front(){
        return "filter";
    }

    @GetMapping("/derailleurs_rear")
    public String derailleurs_rear(){
        return "filter";
    }

    @GetMapping("/saddle")
    public String saddle(){
        return "filter";
    }

    @GetMapping("/handlebars")
    public String handlebars(){
        return "filter";
    }

    @GetMapping("/wheels")
    public String wheels(){
        return "filter";
    }
}
