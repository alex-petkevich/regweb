package regweb.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.web.bind.EscapedErrors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import regweb.ConstLists;
import regweb.domain.Form;
import regweb.service.FormService;
import regweb.service.UserService;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class FormController {

    @Autowired
    private FormService formService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String listForms(Map<String, Object> map) {

        map.put("formsList", formService.listForms());

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

        model.put("form", new Form());
        return "add";
    }

    @RequestMapping(value = "/addform", method = RequestMethod.POST)
    public String processForm(@Valid Form form,BindingResult result, Map model) {
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
        
        if (result.hasErrors()) {
            return "add";
        }
        model.put("form", form);
        return "add";
    }

    @RequestMapping("/index")
    public String home() {
        return "redirect:/";
    }


}
