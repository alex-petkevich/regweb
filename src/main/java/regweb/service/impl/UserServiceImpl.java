package regweb.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import regweb.dao.UserDAO;
import regweb.domain.User;
import regweb.service.UserService;

import java.util.List;
import java.util.Map;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 23:57
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDAO userDAO;

    @Transactional
    public void save(User user) {
        userDAO.save(user);
    }

    @Transactional
    public List<User> listUsers(Map<String,String> searchValue,String sortField,String sortOrder,Integer offset,Integer limit) {
        return userDAO.listUsers(searchValue,sortField,sortOrder,offset,limit);
    }

    @Transactional
    public List<String> listUserRoles(String username) {
        return userDAO.listUserRoles(username);
    }

    @Transactional
    public void removeUser(Integer id) {
        userDAO.removeUser(id);
    }

    @Transactional
    public User getUserByName(String name) {
        return userDAO.getUserByName(name);
    }

    @Transactional
    public User getUser(Integer id) {
        return userDAO.getUser(id);
    }

    @Transactional
    public void addRole(String username,String role) {
        userDAO.addRole(username,role);
    }

    @Transactional
    public void removeRole(String username,String role) {
        userDAO.removeRole(username,role);
    }
}
