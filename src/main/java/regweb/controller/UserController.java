package regweb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import regweb.domain.User;
import regweb.service.UserService;

import javax.validation.Valid;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

   @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String listUsers(@RequestParam(value="sort",required = false)  String sort,
                            @RequestParam(value="dir",required = false)  String dir,
                            Map<String, Object> map) {

       Map<String,String> searchVal = new HashMap<String,String>();

       String to_sort = "";
       String to_dir = "";
       if (sort==null) {
           to_sort = "added";
           to_dir = "desc";
       } else {
           if (sort.equals("added")) {
               to_sort = "added";
           }
           if (sort.equals("username")) {
               to_sort = "username";
           }
           if (sort.equals("email")) {
               to_sort = "email";
           }
           if (sort.equals("enabled")) {
               to_sort = "enabled";
           }
       }
       if (dir!=null) {
           to_dir = dir;
       }

       List<User> users = userService.listUsers(searchVal,to_sort,to_dir,0,0);
       for(User user : users) {
           user.setRoles(userService.listUserRoles(user.getUsername()));
       }

        map.put("usersList", users);
        map.put("sort",sort);
        map.put("dir",dir);
        map.put("search",searchVal);

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

    @RequestMapping(value = "/adduser", method = RequestMethod.GET)
    public String addUser(Map<String, Object> model) {

        model.put("user", new User());
        return "adduser";
    }

    @RequestMapping(value = "/user/edit/{id}", method = RequestMethod.GET)
    public String editForm(Map<String, Object> model, @PathVariable("id") String id) {
        User user = userService.getUserByName(id);
        List<String> roles = userService.listUserRoles(user.getUsername());
        if (roles.contains("ROLE_ADMIN")) {
            model.put("is_admin", true);
        }
        model.put("user", user);
        return "adduser";
    }

    @RequestMapping(value = "/adduser", method = RequestMethod.POST)
    public String processForm(@Valid User user,
                              BindingResult result,
                              @RequestParam("password")  String password,
                              @RequestParam("password_confirm")  String password_confirm,
                              @RequestParam(value = "is_admin", required = false)  Integer is_admin,
                              Map model) {
        model.put("is_admin", is_admin);

        if (result.hasErrors()) {
            return "adduser";
        }
        if (user.getId() == null && password.equals("") || !password_confirm.equals(password)) {
            model.put("error", 1);
            return "adduser";
        }
        User checkUser = userService.getUserByName(user.getUsername());
        if (user.getId() == null) {
            user.setAdded(new Date());
            user.setId(null);
            if (checkUser!=null) {
                model.put("error", 2);
                return "adduser";
            }
        } else {
            User prevUser = userService.getUser(user.getId());
            user.setAdded(prevUser.getAdded());
            user.setId(prevUser.getId());
            if (checkUser!=null && !prevUser.getUsername().equals(user.getUsername())) {
                model.put("error", 2);
                return "adduser";
            }
            if (password.equals("")) {
                user.setPassword(prevUser.getPassword());
            }
        }
        userService.save(user);
        userService.addRole(user.getUsername(), "ROLE_USER");
        if (is_admin!=null && is_admin == 1) {
            userService.addRole(user.getUsername(),"ROLE_ADMIN");
        } else {
            userService.removeRole(user.getUsername(), "ROLE_ADMIN");
        }
        return "redirect:/users";
    }


    @RequestMapping(value = "/user/delete/{id}", method = RequestMethod.GET)
    public String deleteForm(Map<String, Object> model, @PathVariable("id") String id) {
        if (id!=null) {
            User user = userService.getUserByName(id);
            userService.removeUser(user.getId());
        }
        return "redirect:/";
    }

    public String displayRole(List<String> roles) {
        return "xxx";
    }

}
