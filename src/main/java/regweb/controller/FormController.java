package regweb.controller;

import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.exception.VelocityException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.velocity.VelocityEngineUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import regweb.constants.Actions;
import regweb.constants.Lists;
import regweb.constants.Paths;
import regweb.domain.FileUpload;
import regweb.domain.Form;
import regweb.exceptions.ImportExceptions;
import regweb.service.FormService;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.*;
import java.util.*;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

@Controller
class FormController {

    private static final String TEMPLATES_AUTOFILL_VM = "autofill.vm";
    public static final String PACKAGE_NAME = "package.zip";
    @Autowired
    private FormService formService;

    @Autowired
    private MessageSource messageSource;

    @Autowired
    private VelocityEngine velocityEngine;

    @Autowired
    private Properties properties;

    Logger logger = LoggerFactory.getLogger(FormController.class);

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String actionForms(@RequestParam(value = "action", required = false) Integer action,
                              @RequestParam(value = "selusers", required = false) String[] selusers, HttpServletResponse response) throws IOException {

        if (action == null)
            action = 0;

        switch (action) {
            case Actions.REMOVE:
                if (selusers != null)
                    for (String selUser : selusers) {
                        formService.removeForm(Integer.parseInt(selUser));
                    }
                break;
            case Actions.DOWNLOAD:
                if (selusers != null) {

                    Set<File> files = new HashSet<File>();
                    for (String seluser : selusers) {

                        Map<String, Object> model = new HashMap<String, Object>();
                        Form form = formService.getForm(Integer.parseInt(seluser));
                        model.put("form", form);
                        String textdoc = VelocityEngineUtils.mergeTemplateIntoString(velocityEngine, TEMPLATES_AUTOFILL_VM, properties.getProperty("source.encoding"), model);
                        String filename = (form.getFilename() != null && !form.getFilename().equals("") ? form.getFilename() : form.getSurname_1() + "_" + form.getName_3());
                        File temp = File.createTempFile(filename, ".txt");
                        try {
                            BufferedWriter fos = new BufferedWriter(new OutputStreamWriter(
                                    new FileOutputStream(temp), properties.getProperty("source.encoding")
                            ));
                            fos.write(textdoc);
                            fos.flush();
                            String newFilePath = temp.getAbsolutePath().replace(temp.getName(), "") + filename + ".txt";
                            File newFile = new File(newFilePath);
                            temp.renameTo(newFile);
                            files.add(newFile);
                        } catch (IOException e) {
                            logger.warn("Problem with file saving");
                        }
                    }
                    File outFile = File.createTempFile("package", ".zip");
                    this.zipIt(outFile.getAbsolutePath(), files);
                    FileInputStream in = new FileInputStream(outFile);
                    //send to browser
                    response.setContentType("application/zip");
                    String headerKey = "Content-Disposition";
                    String headerValue = String.format("attachment; filename=\"%s\"", PACKAGE_NAME);
                    response.setHeader(headerKey, headerValue);
                    byte[] outputByte = new byte[4096];
                    while (in.read(outputByte, 0, 4096) != -1) {
                        response.getOutputStream().write(outputByte, 0, 4096);
                    }
                    in.close();
                    response.getOutputStream().flush();
                    response.getOutputStream().close();
                    // delete all temp files
                    try {
                        outFile.delete();
                        for (File file : files) {
                            file.delete();
                        }
                    } catch (Exception exception) {
                        logger.warn("Can't delete file %s", outFile.getAbsoluteFile());
                    }

                }
                break;
            default:
                if (selusers != null)
                    for (String selUser : selusers) {
                        Form form = formService.getForm(Integer.parseInt(selUser));
                        form.setIs_registered(true);
                        formService.save(form);
                    }

        }

        return Paths.ROOT_REDIRECT;
    }


    @RequestMapping(value = "/")
    public String listForms(@RequestParam(value = "sort", required = false) String sort,
                            @RequestParam(value = "dir", required = false) String dir,
                            @RequestParam(value = "text", required = false) String text,
                            @RequestParam(value = "from", required = false) String from,
                            @RequestParam(value = "to", required = false) String to,
                            @RequestParam(value = "not_reg", required = false) String not_reg,
                            @RequestParam(value = "user_id", required = false) String user_id,
                            @RequestParam(value = "clear", required = false) String clear,
                            Map<String, Object> map,
                            HttpSession session) {
        if (session.getAttribute("searchForm") == null) {
            session.setAttribute("searchForm", new HashMap<String, String>());
        }
        Map<String, String> searchVal = (HashMap<String, String>) session.getAttribute("searchForm");

        if (is_admin()) {
            if (user_id != null) {
                searchVal.put("user_id", user_id);
            }
        } else {
            searchVal.put("user_id", SecurityContextHolder.getContext().getAuthentication().getName());
        }
        if (text != null) {
            searchVal.put("text", text);
        }
        if (from != null) {
            searchVal.put("from", from);
        }
        if (to != null) {
            searchVal.put("to", to);
        }
        if (not_reg != null && not_reg.equals("1")) {
            searchVal.put("not_reg", not_reg);
        } else if (clear != null) {
            searchVal.put("not_reg", null);
        }
        session.setAttribute("searchForm", searchVal);
        if (clear != null && clear.equals("1")) {
            session.setAttribute("searchForm", null);
            searchVal.clear();
        }
        String to_sort = "";
        String to_dir = "";
        if (sort == null) {
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
        if (dir != null) {
            to_dir = dir;
        }

        map.put("formsList", formService.listForms(searchVal, to_sort, to_dir, 0, 0));
        map.put("sort", sort);
        map.put("dir", dir);
        map.put("search", searchVal);

        return Paths.FORMS;
    }

    @RequestMapping(value = "/addform", method = RequestMethod.GET)
    public String addForm(Map<String, Object> model) {
        model.putAll(fillDictionary());
        model.put("form", new Form());
        return Paths.ADD;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editForm(Map<String, Object> model, @PathVariable("id") Integer id) {
        model.putAll(fillDictionary());

        Form form = formService.getForm(id);
        model.put("form", form);
        return Paths.ADD;
    }

    @RequestMapping(value = "/import", method = RequestMethod.POST)
    public String importForm(FileUpload fileUpload, BindingResult result, Map model, Locale locale, @RequestParam("id") Integer id, MultipartHttpServletRequest request) {

        Authentication authentic = SecurityContextHolder.getContext().getAuthentication();
        String userId = authentic.getName();
        if (fileUpload.getFileData() != null && fileUpload.getFileData().getContentType().equals("application/pdf")) {
            try {
                formService.parseFromPDF(fileUpload.getFileData().getInputStream());
                return Paths.ROOT_REDIRECT;
            } catch (IOException e) {
                model.put("importError", messageSource.getMessage("errors.importReadError", null, locale));
            }

        } else if (fileUpload.getFileData() != null && ("text/html".equals(fileUpload.getFileData().getContentType()) || "text/plain".equals(fileUpload.getFileData().getContentType()))) {

            int total;
            try {
                total = formService.parseFromRoboHTML(fileUpload.getFileData().getInputStream(), userId);
                return "redirect:/?totalConverted=" + total;
            } catch (IOException e) {
                model.put("importError", messageSource.getMessage("errors.importReadError", null, locale));
            } catch (ImportExceptions ex) {
                request.getSession().setAttribute("errorImport", ex.getMessage());
                return Paths.ROOT_REDIRECT + "addform?errorConvert=1&totalConverted=" + ex.getTotal();
            }

        } else {
            model.put("importError", messageSource.getMessage("errors.incorrectPDFFormat", null, locale));

        }

        model.putAll(fillDictionary());
        model.put("form", new Form());

        return Paths.ADD;


    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteForm(Map<String, Object> model, @PathVariable("id") Integer id) {
        if (id != null) {
            formService.removeForm(id);
        }
        return Paths.ROOT_REDIRECT;
    }

    @RequestMapping(value = "/addform", method = RequestMethod.POST)
    public String processForm(@Valid Form form,
                              BindingResult result,
                              @RequestParam("copy") String copy,
                              @RequestParam(value = "is_children", required = false) String is_children, Map model) {

        model.putAll(fillDictionary());

        if (result.hasErrors()) {
            return Paths.ADD;
        }

        if (form.getPersonaldataes_34() == null) {
            form.setPersonaldataes_34("0");
        }
        if (form.getEndcountrypermit_28() == null) {
            form.setEndcountrypermit_28("0");
        }

        Form prevForm = formService.getForm(form.getId());
        Authentication authentic = SecurityContextHolder.getContext().getAuthentication();
        if (form.getId() == null || !copy.equals("")) {
            form.setAdded(new Date());
            form.setUser_id(authentic.getName());
            form.setId(null);
            form.setIs_registered(false);
        } else {
            form.setAdded(prevForm.getAdded());
            form.setUser_id(prevForm.getUser_id());
            form.setFilename(prevForm.getFilename());
        }
        form.setIs_children(is_children == null || !is_children.equals("1"));
        formService.save(form);
        if (!copy.equals("")) {
            return Paths.ROOT_REDIRECT + "edit/" + form.getId();
        } else {
            return Paths.ROOT_REDIRECT;
        }
    }

    @RequestMapping("/index")
    public String home() {
        return Paths.ROOT_REDIRECT;
    }

    @RequestMapping(value = "/download/{id}", method = RequestMethod.GET)
    public String downloadForm(Map<String, Object> model, @PathVariable("id") Integer id, HttpServletResponse response) throws IOException {
        Form form;
        if (id != null) {
            form = formService.getForm(id);
            String filename = (form.getFilename() != null && !form.getFilename().equals("") ? form.getFilename() + ".txt" : form.getSurname_1() + "_" + form.getName_3() + ".txt");
            model.put("form", form);
            response.setContentType("text/plain; charset="+properties.getProperty("source.encoding"));
            String headerKey = "Content-Disposition";
            String headerValue = String.format("attachment; filename=\"%s\"", filename);
            response.setHeader(headerKey, headerValue);
            response.setCharacterEncoding(properties.getProperty("source.encoding"));

            String textdoc = null;
            try {
                textdoc = VelocityEngineUtils.mergeTemplateIntoString(velocityEngine, TEMPLATES_AUTOFILL_VM, properties.getProperty("source.encoding"), model);
            } catch (VelocityException e) {
                e.printStackTrace();
            }
            if (textdoc!=null) {
                response.getOutputStream().write(textdoc.getBytes());
            }
            response.getOutputStream().flush();
            return null;
        } else {
            return Paths.ROOT_REDIRECT;
        }
    }


    private boolean is_admin() {
        boolean is_admin = false;
        Authentication authentic = SecurityContextHolder.getContext().getAuthentication();
        for (GrantedAuthority role : authentic.getAuthorities()) {
            if (role.getAuthority().equals("ROLE_ADMIN"))
                is_admin = true;
        }
        return is_admin;
    }

    private Map fillDictionary() {
        Map model = new HashMap();

        model.put("sexList", Lists.sexList);
        model.put("mStatusList", Lists.mStatusList);
        model.put("countiresOldList", Lists.countriesOldList);
        model.put("countiresList", Lists.countriesList);
        model.put("docTypeList", Lists.docTypeList);
        model.put("countryPosList", Lists.countryPosList);
        model.put("professionList", Lists.professionList);
        model.put("employeeList", Lists.employeeList);
        model.put("goalsList", Lists.goalsList);
        model.put("inputCountriesList", Lists.inputCountriesList);
        model.put("qtyList", Lists.qtyList);
        model.put("invList", Lists.invList);
        model.put("expenciesList", Lists.expenciesList);
        model.put("moneyList", Lists.moneyList);
        model.put("fileUpload", new FileUpload());
        model.put("relationshipList", Lists.relationshipList);
        model.put("fingerprintList", Lists.fingerprintList);

        return model;
    }


    /**
     * Zip it
     *
     * @param zipFile output ZIP file location
     */
    void zipIt(String zipFile, Set<File> fileList) {

        byte[] buffer = new byte[1024];

        try {

            FileOutputStream fos = new FileOutputStream(zipFile);
            ZipOutputStream zos = new ZipOutputStream(fos);

            for (File file : fileList) {

                FileInputStream in = null;
                try {
                    ZipEntry ze = new ZipEntry(file.getName());
                    zos.putNextEntry(ze);

                    in = new FileInputStream(file);

                    int len;
                    while ((len = in.read(buffer)) > 0) {
                        zos.write(buffer, 0, len);
                    }
                } finally {
                    if (in != null) {
                        in.close();
                    }
                }

            }

            zos.closeEntry();
            //remember close it
            zos.close();

        } catch (IOException ex) {
            logger.warn("Problem with zip file %s", zipFile);
        }
    }


}
