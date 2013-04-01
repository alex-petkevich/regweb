package regweb.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import regweb.dao.FormDAO;
import regweb.domain.Form;

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

    @Transactional
    public void save(Form form) {
        sessionFactory.getCurrentSession().saveOrUpdate(form);
        sessionFactory.getCurrentSession().flush();
    }

    @Transactional
    public List<Form> listForms() {
        return sessionFactory.getCurrentSession().createQuery("from Form")
                .list();
    }

    @Transactional
    public void removeForm(Integer id) {
        Form form = (Form) sessionFactory.getCurrentSession().load(
                Form.class, id);
        if (null != form) {
            sessionFactory.getCurrentSession().delete(form);
        }
    }

    @Transactional
    public Form getForm(Integer id) {
        if (id == null)
            id = 0;

        return (Form) sessionFactory.getCurrentSession().load(
                Form.class, id);
    }
}
