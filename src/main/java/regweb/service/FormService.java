package regweb.service;

import regweb.domain.Form;

import java.util.List;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 23:57
 */
public interface FormService {

    public void save(Form form);

    public List<Form> listForms();

    public void removeForm(Integer id);

    public Form getForm(Integer id);
}
