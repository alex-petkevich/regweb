package regweb.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import regweb.domain.Form;
import regweb.service.FormService;
import regweb.service.UserService;

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
    public String addForm(Map<String, Object> map) {
        map.put("form", new Form());
        return "add";
    }

    @RequestMapping("/index")
    public String home() {
        return "redirect:/";
    }


}
