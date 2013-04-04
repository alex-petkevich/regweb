package regweb.dao;

import regweb.domain.User;

import java.util.List;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 23:50
 */
public interface UserDAO {

    public void save(User user);

    public List<User> listUsers();

    public void removeUser(Integer id);

    public User getUserByName(String name);
}
