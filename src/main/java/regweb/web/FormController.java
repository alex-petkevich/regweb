package regweb.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import regweb.ConstLists;
import regweb.domain.FileUpload;
import regweb.domain.Form;
import regweb.exceptions.ImportExceptions;
import regweb.service.FormService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

@Controller
public class FormController {

    @Autowired
    private FormService formService;

    @Autowired
    private MessageSource messageSource;

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String actionForms(@RequestParam(value="action",required = false)  String action,
                              @RequestParam(value="selusers",required = false) String[] selusers,Map<String, Object> map) {
        
        if (selusers!=null)
            for (int i=0;i<selusers.length;i++) {
                Form form = formService.getForm(Integer.parseInt(selusers[i]));
                form.setIs_registered(true);
                formService.save(form);
            }
        return "redirect:/";
    }
    

    @RequestMapping(value = "/")
    public String listForms(@RequestParam(value="sort",required = false)  String sort,
                            @RequestParam(value="dir",required = false)  String dir,
                            @RequestParam(value="text",required = false)  String text,
                            @RequestParam(value="from",required = false)  String from,
                            @RequestParam(value="to",required = false)  String to,
                            @RequestParam(value="not_reg",required = false)  String not_reg,
                            @RequestParam(value="user_id",required = false)  String user_id,
                            @RequestParam(value="clear",required = false)  String clear,
                            Map<String, Object> map,
                            HttpSession session) {
        if (session.getAttribute("searchForm") == null) {
            session.setAttribute("searchForm",new HashMap<String,String>());
        }
        Map<String,String> searchVal = (HashMap<String,String>)session.getAttribute("searchForm");
        
        if (is_admin()) {
            if (user_id!=null) {
                searchVal.put("user_id",user_id);
            } 
        }  else {
            searchVal.put("user_id",SecurityContextHolder.getContext().getAuthentication().getName());
        }
        if (text!=null) {
            searchVal.put("text",text);
        }
        if (from!=null) {
            searchVal.put("from",from);
        }
        if (to!=null){
            searchVal.put("to",to);
        }
        if (not_reg!=null && not_reg.equals("1")) {
            searchVal.put("not_reg",not_reg);
        } else if (clear!=null) {
            searchVal.put("not_reg",null);
        }
        session.setAttribute("searchForm",searchVal);
        if (clear!=null && clear.equals("1")) {
            session.setAttribute("searchForm",null);
            searchVal.clear();
        }
        String to_sort = "";
        String to_dir = "";
        if (sort==null) {
            to_sort = "added";
            to_dir = "desc";
        } else {
            if (sort.equals("added")) {
                 to_sort = "added";
            }
            if (sort.equals("surname")) {
                to_sort = "surname_1";
            }
            if (sort.equals("name")) {
                to_sort = "name_3";
            }
            if (sort.equals("passnum")) {
                to_sort = "passnum_13";
            }
            if (sort.equals("registered")) {
                to_sort = "is_registered";
            }
        }
        if (dir!=null) {
            to_dir = dir;
        }

        map.put("formsList", formService.listForms(searchVal,to_sort,to_dir,0,0));
        map.put("sort",sort);
        map.put("dir",dir);
        map.put("search",searchVal);

        return "forms";
    }

    @RequestMapping(value = "/addform", method = RequestMethod.GET)
    public String addForm(Map<String, Object> model) {
        model.putAll(fillDictionary());
        model.put("form", new Form());
        return "add";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editForm(Map<String, Object> model, @PathVariable("id") Integer id) {
        model.putAll(fillDictionary());

        Form form = formService.getForm(id);
        model.put("form", form);
        return "add";
    }
    
    @RequestMapping(value = "/import", method = RequestMethod.POST)
    public String importForm(FileUpload fileUpload, BindingResult result, Map model,Locale locale,@RequestParam("id")  Integer id,HttpServletRequest request) {
        
        if (fileUpload.getFileData()!=null && fileUpload.getFileData().getContentType().equals("application/pdf")) {
            try {
                formService.parseFromPDF(fileUpload.getFileData().getInputStream());
                return "redirect:/";
            } catch (IOException e) {
                model.put("importError", messageSource.getMessage("errors.importReadError",null,locale));
            }

        } else if (fileUpload.getFileData()!=null && fileUpload.getFileData().getContentType().equals("text/html")) {

          int total = 0;
          try {
            total = formService.parseFromRoboHTML(fileUpload.getFileData().getInputStream());
            return "redirect:/?totalConverted="+total;
          } catch (IOException e) {
            model.put("importError", messageSource.getMessage("errors.importReadError",null,locale));
          } catch(ImportExceptions ex) {
            request.getSession().setAttribute("errorImport", ex.getMessage());

            return "redirect:/addform?errorConvert=1&totalConverted="+ex.getTotal();
          }

        }else {
            model.put("importError", messageSource.getMessage("errors.incorrectPDFFormat",null,locale));
            
        }
        
        model.putAll(fillDictionary());
        model.put("form", new Form());
        
        return "add";
    
        
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteForm(Map<String, Object> model, @PathVariable("id") Integer id) {
        if (id!=null) {
            formService.removeForm(id);
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/addform", method = RequestMethod.POST)
    public String processForm(@Valid Form form,BindingResult result,@RequestParam("copy")  String copy, Map model) {
        
        model.putAll(fillDictionary());
        
        if (result.hasErrors()) {
            return "add";
        }
        Form prevForm = formService.getForm(form.getId());
        Authentication authentic = SecurityContextHolder.getContext().getAuthentication();
        if (form.getId() == null  || !copy.equals("")) {
            form.setAdded(new Date());
            form.setUser_id(authentic.getName());
            form.setId(null);
            form.setIs_registered(false);
        } else {
            form.setAdded(prevForm.getAdded());
            form.setUser_id(prevForm.getUser_id());
        }
        formService.save(form);
        if (!copy.equals("")) {
            return "redirect:/edit/"+form.getId();
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping("/index")
    public String home() {
        return "redirect:/";
    }

    @RequestMapping(value = "/download/{id}", method = RequestMethod.GET)
    public String downloadForm(Map<String, Object> model, @PathVariable("id") Integer id,HttpServletResponse response) {
        Form form;
        if (id!=null) {
            form = formService.getForm(id);
            model.put("form",form);
            response.setContentType("text/plain");
            String headerKey = "Content-Disposition";
            String headerValue = String.format("attachment; filename=\"%s\"",
                    "form_"+form.getPassnum_13()+".txt");
            response.setHeader(headerKey, headerValue);
            return "template/template";
        } else {
          return "redirect:/";
        }
    }


    private boolean is_admin() {
        boolean is_admin = false;
        Authentication authentic = SecurityContextHolder.getContext().getAuthentication();
        for(GrantedAuthority role : authentic.getAuthorities()) {
            if (role.getAuthority().equals("ROLE_ADMIN"))
                is_admin = true;
        }
        return is_admin;
    }
    
    private Map fillDictionary() {
        Map model = new HashMap();

        model.put("sexList", ConstLists.sexList);
        model.put("mStatusList", ConstLists.mStatusList);
        model.put("countiresOldList", ConstLists.countriesOldList);
        model.put("countiresList", ConstLists.countriesList);
        model.put("docTypeList", ConstLists.docTypeList);
        model.put("countryPosList", ConstLists.countryPosList);
        model.put("professionList", ConstLists.professionList);
        model.put("employeeList", ConstLists.employeeList);
        model.put("goalsList", ConstLists.goalsList);
        model.put("inputCountriesList", ConstLists.inputCountriesList);
        model.put("qtyList", ConstLists.qtyList);
        model.put("invList", ConstLists.invList);
        model.put("expenciesList", ConstLists.expenciesList);
        model.put("moneyList", ConstLists.moneyList);
        model.put("fileUpload", new FileUpload());

        return model;
    }


}
