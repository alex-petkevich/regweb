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
import regweb.domain.Form;
import regweb.service.FormService;
import regweb.service.UserService;

import javax.validation.Valid;
import java.util.Map;

@Controller
public class FormController {

    @Autowired
    private FormService formService;
    
    @Autowired
    private Validator validator;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String listForms(Map<String, Object> map) {

        map.put("formsList", formService.listForms());

        return "forms";
    }

    @RequestMapping(value = "/addform", method = RequestMethod.GET)
    public String addForm(Map<String, Object> map) {
        map.put("form", new Form());
        return "add";
    }

    @RequestMapping(value = "/addform", method = RequestMethod.POST)
    public String processForm(@Valid Form form,BindingResult result, Map model) {
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
