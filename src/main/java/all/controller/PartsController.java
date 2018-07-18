package all.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/parts")
public class PartsController {

    @GetMapping("/frame")
    public String frame(){
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
