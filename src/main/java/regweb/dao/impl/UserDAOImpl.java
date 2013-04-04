package regweb.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import regweb.dao.UserDAO;
import regweb.domain.User;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 23:52
 */
@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    private final Map<String,Integer> dbroles = new HashMap<String, Integer>(){{
        put("ROLE_ANONYMOUS", 1);
        put("ROLE_USER", 2);
        put("ROLE_ADMIN", 3);
    }};

    @Override
    public void save(User user) {
        sessionFactory.getCurrentSession().saveOrUpdate(user);
    }

    @Override
    public List<User> listUsers(Map<String,String> searchValue,String sortField,String sortOrder,Integer offset,Integer limit) {

        Criteria req = sessionFactory.getCurrentSession().createCriteria(User.class);
        if (limit > 0) {
            req.setMaxResults(limit);
            req.setFirstResult(offset);
        }
        req.setCacheable(true);

        if (sortOrder.equals("asc")) {
            req.addOrder(Order.asc(sortField));
        }
        else if (sortOrder.equals("desc")) {
            req.addOrder(Order.desc(sortField));
        }
        return req.list();

    }

    public List<String> listUserRoles(String username) {
        Query qry = sessionFactory.getCurrentSession().createSQLQuery("SELECT r.role_name\n" +
                "                FROM users u, roles r, users_roles a\n" +
                "                WHERE u.username = a.username\n" +
                "                AND r.id = a.role_id\n" +
                "                AND u.username = ?");
        qry.setParameter(0,username);
        return qry.list();
    }

    public List listRoles() {
        Query qry = sessionFactory.getCurrentSession().createSQLQuery("SELECT id,role_name\n" +
                "                FROM roles\n");
        return qry.list();
    }

    @Override
    public void removeUser(Integer id) {
        User user = (User) sessionFactory.getCurrentSession().get(
                User.class, id);
        if (null != user) {
            this.removeRole(user.getUsername(),"ROLE_ADMIN");
            this.removeRole(user.getUsername(),"ROLE_USER");
            sessionFactory.getCurrentSession().delete(user);
        }
    }

    @Override
    public User getUserByName(String name) {

        Query userQ = sessionFactory.getCurrentSession().createQuery("from User where username = ?");
        userQ.setParameter(0,name);
        List<User> result = userQ.list();
        if (result.size() > 0)
            return (User)result.get(0);
        else
            return null;
    }

    @Override
    public User getUser(Integer id) {

        User user = (User) sessionFactory.getCurrentSession().get(
                User.class, id);

        return user;
    }

    @Override
    public void addRole(String username, String role) {

        List<String> roles = this.listUserRoles(username);
        if (!roles.contains(role)) {
            Query query = sessionFactory.getCurrentSession().createSQLQuery("INSERT INTO users_roles(username,role_id) VALUES(?,?)");
            query.setParameter(0,username);
            query.setParameter(1,dbroles.get(role));
            query.executeUpdate();
        }
    }

    @Override
    public void removeRole(String username, String role) {
        Query query = sessionFactory.getCurrentSession().createSQLQuery("DELETE FROM users_roles WHERE username=? AND role_id=?");
        query.setParameter(0,username);
        query.setParameter(1,dbroles.get(role));
        query.executeUpdate();
    }

}
