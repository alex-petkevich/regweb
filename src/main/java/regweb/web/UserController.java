package regweb.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import regweb.domain.User;
import regweb.service.UserService;

import java.util.Map;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

   @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String listUsers(Map<String, Object> map) {

        map.put("usersList", userService.listUsers());

        return "users";
    }

    @RequestMapping(value = "/user-enable/{name}", method = RequestMethod.GET)
    public String enableUser(@PathVariable("name") String name,Map<String, Object> map) {
        User user = userService.getUserByName(name);  
        user.setEnabled(true);
        userService.save(user);
        return "redirect:/users";
    }

    @RequestMapping(value = "/user-disable/{name}", method = RequestMethod.GET)
    public String disableUser(@PathVariable("name") String name,Map<String, Object> map) {
        User user = userService.getUserByName(name);
        user.setEnabled(false);
        userService.save(user);
        return "redirect:/users";
    }

    @RequestMapping(value = "/settings", method = RequestMethod.GET)
    public String userSettings(Map<String, Object> map) {

        Authentication authentic = SecurityContextHolder.getContext().getAuthentication();
        
        if (authentic.getName()!=null) {
        
            User user = userService.getUserByName(authentic.getName());
            
            map.put("user", user);
            
        }
    
        return "user_settings";
    }

    @RequestMapping(value = "/settings", method = RequestMethod.POST)
    public String saveUserSettings(@RequestParam(value="email",required = false)  String email,
                                   @RequestParam(value="password",required = false)  String password,
                                   @RequestParam(value="password_confirm",required = false)  String password_confirm,
                                   Map<String, Object> map) {
        Authentication authentic = SecurityContextHolder.getContext().getAuthentication();

        User user = null;
        
        if (authentic.getName()!=null) {

            user = userService.getUserByName(authentic.getName());
            
            if (password.equals("") || !password.equals(password_confirm)) {
                map.put("error",true);
            }  else {
                user.setEmail(email);
                user.setPassword(password);
                userService.save(user);
                map.put("ok",true);
            }

        }

        map.put("user", user);
        return "user_settings";
    }
}
