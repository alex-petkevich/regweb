package regweb.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import regweb.dao.IFormDAO;
import regweb.domain.Form;
import regweb.exceptions.ImportExceptions;
import regweb.service.FormService;
import regweb.util.PDFTextParser;
import regweb.util.RoboParser;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 23:57
 */
@Service
public class FormServiceImpl implements FormService {
    @Autowired
    private IFormDAO IFormDAO;

    @Transactional
    public void save(Form form) {
        IFormDAO.save(form);
    }

    @Transactional
    public List<Form> listForms(Map<String,String> searchValue,String sortField,String sortOrder,Integer offset,Integer limit) {
        return IFormDAO.listForms(searchValue,sortField,sortOrder,offset,limit);
    }

    @Transactional
    public void removeForm(Integer id) {
        IFormDAO.removeForm(id);
    }

    @Transactional
    public Form getForm(Integer id) {
        return IFormDAO.getForm(id);
    }
    
    public void parseFromPDF(InputStream fileStream) {
        Form form = new Form();

        PDFTextParser pdfTextParserObj = new PDFTextParser();
        
        try {
            pdfTextParserObj.parsePdf(fileStream, "d:\\out.txt");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

  public int parseFromRoboHTML(InputStream fileStream) throws ImportExceptions {
    RoboParser roboParser = new RoboParser();

    int total = 0;
    List<String> errors = new ArrayList<String>();

    try {
      ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
      Validator validator = factory.getValidator();

      List<Form> forms = roboParser.parseHTML(fileStream);
      int number = 1;
      if (forms.size() > 0) {
        for(Form form : forms ) {
          Set<ConstraintViolation<Form>> formIssues = validator.validate(form);
          // check if passnum already exists
          Form passForm = IFormDAO.getFormByPassnum(form.getPassnum_13());

          if (passForm!=null) {
            errors.add("Номер анкеты: "+ number + ", " + form.getName_3() + " " + form.getSurname_1() + " " + form.getPassnum_13() + " Анкета с таким номером паспорта уже есть в базе");
          }
          else if (formIssues.size() == 0) {
            form.setAdded(new Date());
            this.save(form);
            total ++ ;
          } else {
            StringBuilder issue = new StringBuilder();
            for(ConstraintViolation<Form> formIssue: formIssues) {
              issue.append("Поле: ").append(formIssue.getPropertyPath()).append(", Ошибка: ").append(formIssue.getMessage()).append("; ");
            }
            errors.add("Номер анкеты: "+ number + ", " + form.getName_3() + " " + form.getSurname_1() + " " +  issue.toString());
          }
          number++;
        }
      }
    } catch (IOException e) {
      e.printStackTrace();
    }

    if (errors.size() > 0) {
      throw new ImportExceptions(total,errors);
    }

    return total;

  }

}
