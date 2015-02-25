package regweb.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import regweb.service.SendNotificationService;

import java.util.Properties;

/**
 * @author alex on 2/25/15.
 */

@Service("emailNotification")
public class SendEmailNotificationService implements SendNotificationService {
    @Autowired
    private MailSender mailSender;

    @Autowired
    private Properties properties;

    Logger logger = LoggerFactory.getLogger(SendEmailNotificationService.class);

    @Override
    public void send(String to, String subject, String body) {
        SimpleMailMessage message = new SimpleMailMessage();

        message.setFrom(properties.getProperty("email.sender"));
        message.setTo(to);
        message.setSubject(subject);
        message.setText(body);
        if ("true".equals(properties.getProperty("email.debug"))) {
            logger.info(">>>>>>>>>> new email message: {}",body);
        } else {
            mailSender.send(message);
        }
    }
}
