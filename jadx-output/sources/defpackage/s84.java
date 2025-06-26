package defpackage;

/* loaded from: classes.dex */
public final class s84 {
    public static final q84<?> a = new r84();
    public static final q84<?> b;

    static {
        q84<?> q84Var;
        try {
            q84Var = (q84) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            q84Var = null;
        }
        b = q84Var;
    }
}
