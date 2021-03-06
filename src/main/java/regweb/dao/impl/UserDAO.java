package regweb.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import regweb.constants.Roles;
import regweb.dao.IUserDAO;
import regweb.domain.User;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Author: Alexander Petkevich aka mrdoggy Date: 24.03.13 Time: 23:52
 */
@Repository
public class UserDAO implements IUserDAO {

   @Autowired
   private SessionFactory             sessionFactory;

   @Override
   public void save(User user) {
      sessionFactory.getCurrentSession().saveOrUpdate(user);
   }

   @SuppressWarnings("unchecked")
   @Override
   public List<User> listUsers(Map<String, String> searchValue,
         String sortField, String sortOrder, Integer offset, Integer limit) {

      Criteria req = sessionFactory.getCurrentSession().createCriteria(
            User.class);
      if (limit > 0) {
         req.setMaxResults(limit);
         req.setFirstResult(offset);
      }
      req.setCacheable(true);

      if (sortOrder.equals("asc")) {
         req.addOrder(Order.asc(sortField));
      } else if (sortOrder.equals("desc")) {
         req.addOrder(Order.desc(sortField));
      }
      return req.list();

   }

   @SuppressWarnings("unchecked")
   public List<String> listUserRoles(String username) {
      Query qry = sessionFactory.getCurrentSession().createSQLQuery(
            "SELECT r.role_name\n"
                  + "                FROM users u, roles r, users_roles a\n"
                  + "                WHERE u.username = a.username\n"
                  + "                AND r.id = a.role_id\n"
                  + "                AND u.username = ?");
      qry.setParameter(0, username);
      return qry.list();
   }

   @SuppressWarnings("rawtypes")
   public List listRoles() {
      Query qry = sessionFactory.getCurrentSession().createSQLQuery(
            "SELECT id,role_name\n" + "                FROM roles\n");
      return qry.list();
   }

   @Override
   public void removeUser(Integer id) {
      User user = (User) sessionFactory.getCurrentSession().get(User.class, id);
      if (null != user) {
         this.removeRole(user.getUsername(), Roles.ROLE_ADMIN);
         this.removeRole(user.getUsername(), Roles.ROLE_USER);
         sessionFactory.getCurrentSession().delete(user);
      }
   }

   @Override
   @SuppressWarnings("unchecked")
   public User getUserByName(String name) {

      Query userQ = sessionFactory.getCurrentSession().createQuery(
            "from User where username = ?");
      userQ.setParameter(0, name);
      List<User> result = userQ.list();
      if (result.size() > 0)
         return result.get(0);
      else
         return null;
   }

   @Override
   public User getUser(Integer id) {

      return (User) sessionFactory.getCurrentSession().get(User.class, id);
   }

   @Override
   public void addRole(String username, Roles role) {

      List<String> roles = this.listUserRoles(username);
      List<Roles> rolesEnum = new ArrayList<Roles>();
       for(String roleStr : roles) {
           rolesEnum.add(Roles.valueOf(roleStr));
       }
      if (!rolesEnum.contains(role)) {
         Query query = sessionFactory.getCurrentSession().createSQLQuery(
               "INSERT INTO users_roles(username,role_id) VALUES(?,?)");
         query.setParameter(0, username);
         query.setParameter(1, role.getValue());
         query.executeUpdate();
      }
   }

   @Override
   public void removeRole(String username, Roles role) {
      Query query = sessionFactory.getCurrentSession().createSQLQuery(
            "DELETE FROM users_roles WHERE username=? AND role_id=?");
      query.setParameter(0, username);
      query.setParameter(1, role.getValue());
      query.executeUpdate();
   }

}
