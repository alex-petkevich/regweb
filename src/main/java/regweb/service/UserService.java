package regweb.service;

import regweb.domain.User;

import java.util.List;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 23:57
 */
public interface UserService {

    public void addUser(User user);

    public List<User> listUsers();

    public void removeUser(Integer id);
}
