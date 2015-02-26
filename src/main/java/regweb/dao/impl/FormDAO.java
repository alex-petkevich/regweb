package regweb.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import regweb.dao.IFormDAO;
import regweb.domain.Form;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 23:52
 */
@Repository
public class FormDAO implements IFormDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public void save(Form form) {
        sessionFactory.getCurrentSession().saveOrUpdate(form);
        sessionFactory.getCurrentSession().flush();
    }

    @Transactional
    public List<Form> listForms(Map<String,String> searchValue,String sortField,String sortOrder,Integer offset,Integer limit) {
        Criteria req = sessionFactory.getCurrentSession().createCriteria(Form.class);
        if (limit > 0) {
            req.setMaxResults(limit);
            req.setFirstResult(offset);
        }
        req.setCacheable(true);
        if (searchValue.containsKey("from") && !searchValue.get("from").equals(""))
        {
            Date date = null;
            try {
                date = new SimpleDateFormat("yyyy-MM-dd").parse(searchValue.get("from"));
            } catch (ParseException e) {

            }
            req.add(Restrictions.ge("added", date) );
        }
        if (searchValue.containsKey("to") && !searchValue.get("to").equals(""))
        {
            Date date = null;
            try {
                date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(searchValue.get("to")+" 23:59:59");
            } catch (ParseException e) {

            }
            req.add(Restrictions.le("added", date) );
        }
        if (searchValue.containsKey("not_reg") && searchValue.get("not_reg")!=null)
        {
            req.add(Restrictions.eq("is_registered", false) );
        }
        if (searchValue.containsKey("user_id") && !searchValue.get("user_id").equals(""))
        {
            req.add(Restrictions.eq("user_id", searchValue.get("user_id")) );
        }
        if (searchValue.containsKey("passnum_13"))
        {
          req.add(Restrictions.eq("passnum_13", searchValue.get("passnum_13")) );
        }
        if (searchValue.containsKey("text"))
        {
            LogicalExpression restr = Restrictions.or(Restrictions.ilike("surname_1", "%" + searchValue.get("text") + "%"),
                    Restrictions.ilike("name_3", "%" + searchValue.get("text") + "%"));
            LogicalExpression restr2 = Restrictions.or(Restrictions.ilike("name_3", "%" + searchValue.get("text") + "%") ,
                    Restrictions.ilike("identnum_11", "%" + searchValue.get("text") + "%"));
            LogicalExpression restr3 = Restrictions.or(Restrictions.or(restr,restr2),Restrictions.ilike("passnum_13", "%" + searchValue.get("text") + "%")) ;

            req.add(restr3);
        }

        if (sortOrder.equals("asc")) {
            req.addOrder(Order.asc(sortField));
        }
        else if (sortOrder.equals("desc")) {
            req.addOrder(Order.desc(sortField));
        }
        if ("city".equals(sortField)) {
            req.addOrder(Order.asc("type"));
        }
        return req.list();

    }

  @Transactional
  public Form getFormByPassnum(String passnum) {
    Criteria req = sessionFactory.getCurrentSession().createCriteria(Form.class);
    req.setCacheable(true);
    req.add(Restrictions.eq("passnum_13", passnum) );
    List<Form> result = req.list();
    return (result.size() > 0 ? result.get(0) : null);
  }

    @Transactional
    public void removeForm(Integer id) {
        Form form = (Form) sessionFactory.getCurrentSession().get(
                Form.class, id);
        if (null != form) {
            sessionFactory.getCurrentSession().delete(form);
        }
    }

    @Transactional
    public Form getForm(Integer id) {
        if (id == null)
            id = 0;

        return (Form) sessionFactory.getCurrentSession().get(
                Form.class, id);
    }
}
