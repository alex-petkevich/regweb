package regweb.service;

/**
 * @author alex on 2/25/15.
 */
public interface SendNotificationService {
    public void send(String to, String subject, String body);
}
