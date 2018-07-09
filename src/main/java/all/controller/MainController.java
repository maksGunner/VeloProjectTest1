package all.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;

@Controller
public class MainController {
    @GetMapping("/")
    public String index(Principal principal){

        System.out.println(principal);
        return "index";}

//    @GetMapping("/login")
//    public String login(){return "login";}



    @GetMapping("/registration")
    public String registration(){return "registration";}
}
