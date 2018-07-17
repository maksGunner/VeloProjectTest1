package all.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/boxes")
public class BoxesController {

    @GetMapping("/partAndComp")
    public String partAndComp(){
        return "parts";
    }

    @GetMapping("/accessories")
    public String accessories(){
        return "filter";
    }

    @GetMapping("/maintenance")
    public String maintenance(){
        return "filter";
    }

    @GetMapping("/tools")
    public String tools(){
        return "filter";
    }

    @GetMapping("/cyclingApparel")
    public String CyclingApparel(){
        return "filter";
    }

    @GetMapping("/completeBicycles")
    public String completeBicycles(){
        return "filter";
    }

}
