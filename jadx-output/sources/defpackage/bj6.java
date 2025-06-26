package defpackage;

/* loaded from: classes.dex */
public final class bj6 {
    public static final zi6<?> a = new aj6();
    public static final zi6<?> b;

    static {
        zi6<?> zi6Var;
        try {
            zi6Var = (zi6) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zi6Var = null;
        }
        b = zi6Var;
    }
}
