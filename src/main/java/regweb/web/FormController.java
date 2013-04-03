package regweb.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import regweb.ConstLists;
import regweb.domain.Form;
import regweb.service.FormService;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
public class FormController {

    @Autowired
    private FormService formService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
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
        if (user_id!=null){
            searchVal.put("user_id",user_id);
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

        model.put("form", new Form());
        return "add";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editForm(Map<String, Object> model, @PathVariable("id") Integer id) {
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

        Form form = formService.getForm(id);
        model.put("form", form);
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
    
    private boolean is_admin() {
        boolean is_admin = false;
        Authentication authentic = SecurityContextHolder.getContext().getAuthentication();
        for(GrantedAuthority role : authentic.getAuthorities()) {
            if (role.getAuthority().equals("ROLE_ADMIN"))
                is_admin = true;
        }
        return is_admin;
    }


}
