package regweb.dao.impl;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import regweb.dao.UserDAO;
import regweb.domain.User;

import java.util.List;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 23:52
 */
@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void save(User user) {
        sessionFactory.getCurrentSession().saveOrUpdate(user);
    }

    @Override
    public List<User> listUsers() {
        return sessionFactory.getCurrentSession().createQuery("from User")
                .list();
    }

    @Override
    public void removeUser(Integer id) {
        User user = (User) sessionFactory.getCurrentSession().get(
                User.class, id);
        if (null != user) {
            sessionFactory.getCurrentSession().delete(user);
        }
    }

    @Override
    public User getUserByName(String name) {

        Query userQ = sessionFactory.getCurrentSession().createQuery("from User where username = ?");
        userQ.setParameter(0,name);
        User user = (User) userQ.list().get(0); 
        
        return user;
    }


}
