package regweb.domain;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 07.08.13
 * Time: 22:35
 */
public class FileUpload {
    private String name;
    private CommonsMultipartFile fileData;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public CommonsMultipartFile getFileData() {
        return fileData;
    }

    public void setFileData(CommonsMultipartFile fileData) {
        this.fileData = fileData;
    }
}
