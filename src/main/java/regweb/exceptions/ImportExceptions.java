package regweb.exceptions;

import java.util.List;

/**
 * Created by alex on 12/4/14.
 */
public class ImportExceptions extends Exception {
   /**
    * 
    */
   private static final long serialVersionUID = 1736091552839961994L;
   private final int         total;

   private ImportExceptions(int total, String text) {

      super(text);
      this.total = total;
   }

   public ImportExceptions(int total, List<String> errors)
         throws ImportExceptions {
      StringBuilder errRes = new StringBuilder();

      for (String s : errors) {
         errRes.append(s);
         errRes.append("<br />");
      }

      this.total = total;
      throw new ImportExceptions(total, errRes.toString());
   }

   public int getTotal() {
      return total;
   }

}
