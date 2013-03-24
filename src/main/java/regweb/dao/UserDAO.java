package regweb.dao;

import regweb.domain.User;

import java.util.List;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 23:50
 */
public interface UserDAO {

    public void addUser(User user);

    public List<User> listUsers();

    public void removeUser(Integer id);
}
