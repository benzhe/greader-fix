package defpackage;

/* loaded from: classes.dex */
public final class ix3 {
    public static final fx3<?> a = new gx3();
    public static final fx3<?> b;

    static {
        fx3<?> fx3Var;
        try {
            fx3Var = (fx3) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            fx3Var = null;
        }
        b = fx3Var;
    }
}
