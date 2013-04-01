package regweb.dao;

import regweb.domain.Form;

import java.util.List;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 23:50
 */
public interface FormDAO {

    public void save(Form form);

    public List<Form> listForms();

    public void removeForm(Integer id);

    public Form getForm(Integer id);
}
