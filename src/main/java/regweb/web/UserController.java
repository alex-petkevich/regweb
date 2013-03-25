package regweb.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import regweb.service.UserService;

import java.util.Map;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

   @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String listUsers(Map<String, Object> map) {

        map.put("userList", userService.listUsers());

        return "users";
    }

}
