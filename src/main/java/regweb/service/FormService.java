package regweb.service;

import regweb.domain.Form;
import regweb.exceptions.ImportExceptions;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 23:57
 */
public interface FormService {

    public void save(Form form);

    public List<Form> listForms(Map<String,String> searchValue,String sortField,String sortOrder,Integer offset,Integer limit);

    public void removeForm(Integer id);

    public Form getForm(Integer id);
    
    public void parseFromPDF(InputStream fileStream);

    public int parseFromRoboHTML(InputStream fileStream) throws ImportExceptions;
}
