package defpackage;

/* loaded from: classes.dex */
public final class hk4 {
    public static final fk4<?> a = new ik4();
    public static final fk4<?> b;

    static {
        fk4<?> fk4Var;
        try {
            fk4Var = (fk4) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            fk4Var = null;
        }
        b = fk4Var;
    }
}
