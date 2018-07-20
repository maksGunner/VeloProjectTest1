package all.controller;

import all.entity.Thing;
import all.service.ThingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.File;

@Controller
@RequestMapping("/parts")
public class PartsController {

    @Autowired
    ThingService thingService;

    @GetMapping("/frame")
    public String frame(Model model){
        model.addAttribute("things", thingService.findAllByCategory("frame"));
        return "filter";
    }

    @GetMapping("/fork")
    public String fork(Model model){
        model.addAttribute("things", thingService.findAllByCategory("fork"));
        return "filter";
    }

    @GetMapping("/cranks")
    public String cranks(){
        return "filter";
    }

    @GetMapping("/cassette")
    public String cassette(Model model) {
        model.addAttribute("things", thingService.findAllByCategory("cassette"));
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
