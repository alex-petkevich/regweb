package regweb.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import regweb.dao.FormDAO;
import regweb.domain.Form;
import regweb.service.FormService;

import java.util.List;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 23:57
 */
@Service
public class FormServiceImpl implements FormService {
    @Autowired
    private FormDAO formDAO;

    @Transactional
    public void save(Form form) {
        formDAO.save(form);
    }

    @Transactional
    public List<Form> listForms() {
        return formDAO.listForms();
    }

    @Transactional
    public void removeForm(Integer id) {
        formDAO.removeForm(id);
    }

    @Transactional
    public Form getForm(Integer id) {
        return formDAO.getForm(id);
    }
}
