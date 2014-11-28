package regweb.dao;

import regweb.domain.Form;

import java.util.List;
import java.util.Map;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 23:50
 */
public interface IFormDAO {

    public void save(Form form);

    public List<Form> listForms(Map<String,String> searchValue,String sortField,String sortOrder,Integer offset,Integer limit);

    public void removeForm(Integer id);

    public Form getForm(Integer id);
}
