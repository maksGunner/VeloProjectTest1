package all.service.Mail;

import all.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

@Service
public class MailServiceImpl implements MailService {

    @Autowired
    private JavaMailSender javaMailSender;

    public void sendEmail(User user) {
        MimeMessage mimeMessage = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage);
        try {
        helper.setTo(user.getUsername());
        helper.setText("<h3>Hello dear user with email " + user.getUsername()
                + ". If you want to create a new account on our site, </h3>"
                + "<a href = 'http://localhost:8080/saveUser'>confirm your application</a>", true);
//        Your email login
        helper.setFrom("");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        javaMailSender.send(mimeMessage);
    }
}
