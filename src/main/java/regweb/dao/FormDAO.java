package regweb.dao;

import regweb.domain.Form;
import regweb.domain.User;

import java.util.List;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 23:50
 */
public interface FormDAO {

    public void addForm(Form form);

    public List<Form> listForms();

    public void removeForm(Integer id);
}
