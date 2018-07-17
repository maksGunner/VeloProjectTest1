package all.controller;

import all.entity.User;
import all.service.Mail.MailService;
import all.service.UserService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;

@Controller
public class MainController {
    User user = new User();
    @GetMapping("/")
    public String index(Principal principal){
        return "index";
    }

    @GetMapping("/login")
    public String login(){
        return "login";
    }

    @PostMapping("/loginSuccess")
    public String loginSuccess(){
        return "index";
    }

    @GetMapping("/registration")
    public String registration(){
        return "registration";
    }


    @Autowired
    private UserService userService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @GetMapping("/saveUser")
    public String saveUser (){

        this.user.setPassword(passwordEncoder.encode(this.user.getPassword()));
        userService.save(this.user);

        return "redirect:/";
    }
    @Autowired
    MailService mailService;
    @PostMapping("/sendEmail")
    public String sendEmail(User user, Model model){
        mailService.sendEmail(user);
        this.user = user;
        model.addAttribute("message", "You need to confirm your application on gmail account");
        return "registration";
    }
}
