package regweb.service;

import regweb.constants.Roles;
import regweb.domain.User;

import java.util.List;
import java.util.Map;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 23:57
 */
public interface UserService {

    public void save(User user);

    public List<User> listUsers(Map<String,String> searchValue,String sortField,String sortOrder,Integer offset,Integer limit);

    public List<String> listUserRoles(String username);

    public void removeUser(Integer id);

    public User getUserByName(String name);

    public User getUser(Integer id);

    public void addRole(String username,Roles role);

    public void removeRole(String username,Roles role);

    public String parseSettings(String settings, String parameter);
}
