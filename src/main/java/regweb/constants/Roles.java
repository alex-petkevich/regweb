package regweb.constants;

/**
 * @author alex on 3/8/15.
 */
public enum Roles {
    ROLE_USER(2),
    ROLE_ADMIN(3),
    ROLE_ANONYMOUS(1);

    private int value;

    private Roles(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }
}
