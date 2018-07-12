package all.controller;

import all.entity.User;
import all.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;

@Controller
public class MainController {
    @GetMapping("/")
    public String index(){
        return "index";}

    @GetMapping("/login")
    public String login(){
        return "login";
    }


    @GetMapping("/registration")
    public String registration(){

        return "registration";
    }


    @Autowired
    private UserService userService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @PostMapping("/saveUser")
    public String saveUser (User user){

        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userService.save(user);

        return "redirect:/";
    }
}
