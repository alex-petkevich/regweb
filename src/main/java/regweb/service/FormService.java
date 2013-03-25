package regweb.service;

import regweb.domain.Form;
import regweb.domain.User;

import java.util.List;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 23:57
 */
public interface FormService {

    public void addForm(Form form);

    public List<Form> listForms();

    public void removeForm(Integer id);
}
