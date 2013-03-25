package regweb.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import regweb.dao.FormDAO;
import regweb.dao.UserDAO;
import regweb.domain.Form;
import regweb.domain.User;

import java.util.List;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 23:52
 */
@Repository
public class FormDAOImpl implements FormDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addForm(Form form) {
        sessionFactory.getCurrentSession().save(form);
    }

    @Override
    public List<Form> listForms() {
        return sessionFactory.getCurrentSession().createQuery("from Form")
                .list();
    }

    @Override
    public void removeForm(Integer id) {
        Form form = (Form) sessionFactory.getCurrentSession().load(
                User.class, id);
        if (null != form) {
            sessionFactory.getCurrentSession().delete(form);
        }
    }
}
