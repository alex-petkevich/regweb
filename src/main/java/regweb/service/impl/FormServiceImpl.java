package regweb.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import regweb.dao.IFormDAO;
import regweb.domain.Form;
import regweb.service.FormService;
import regweb.util.PDFTextParser;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

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
}
