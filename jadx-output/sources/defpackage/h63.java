package defpackage;

/* loaded from: classes.dex */
public final class h63 {
    public static final g63<?> a = new i63();
    public static final g63<?> b;

    static {
        g63<?> g63Var;
        try {
            g63Var = (g63) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            g63Var = null;
        }
        b = g63Var;
    }
}
