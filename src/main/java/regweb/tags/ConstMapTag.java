package regweb.tags;

/**
 * Created by alex on 12/16/14.
 */
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import org.apache.taglibs.standard.tag.el.core.ExpressionUtil;


public class ConstMapTag extends TagSupport {
  public static final long serialVersionUID = 0x2ed23c0f306L;

  private String path = "";
  private String var = "";

  public void setPath (String path) throws JspException {
    this.path = (String)ExpressionUtil.evalNotNull ("constMap", "path",
        path, String.class, this, pageContext);
  }

  public void setVar (String var) throws JspException {
    this.var = (String)ExpressionUtil.evalNotNull ("constMap", "var",
        var, String.class, this, pageContext);
  }

  public int doStartTag () throws JspException {
    // Use Reflection to look up the desired field.
    try {
      Class<?> clazz = null;
      try {
        clazz = Class.forName (path);
      } catch (ClassNotFoundException ex) {
        throw new JspException ("Class " + path + " not found.");
      }
      Field [] flds = clazz.getDeclaredFields ();
      // Go through all the fields, and put static ones in a Map.
      Map<String, Object> constMap = new TreeMap<String, Object> ();
      for (int i = 0; i < flds.length; i++) {
        // Check to see if this is public static final. If not, it's not a constant.
        int mods = flds [i].getModifiers ();
        if (!Modifier.isFinal (mods) || !Modifier.isStatic (mods) ||
            !Modifier.isPublic (mods)) {
          continue;
        }
        Object val = null;
        try {
          val = flds [i].get (null);    // null for static fields.
        } catch (Exception ex) {
          System.out.println ("Problem getting value of " + flds [i].getName ());
          continue;
        }
        // flds [i].get () automatically wraps primitives.
        // Place the constant into the Map.
        constMap.put (flds [i].getName (), val);
      }
      // Export the Map as a Page variable.
      pageContext.setAttribute (var, constMap);
    } catch (Exception ex) {
      if (!(ex instanceof JspException)) {
        throw new JspException ("Could not process constants from class " + path);
      } else {
        throw (JspException)ex;
      }
    }
    return SKIP_BODY;
  }
}
