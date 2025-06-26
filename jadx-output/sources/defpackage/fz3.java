package defpackage;

/* loaded from: classes.dex */
public final class fz3 {
    public static final dz3 a;
    public static final dz3 b;

    static {
        dz3 dz3Var;
        try {
            dz3Var = (dz3) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            dz3Var = null;
        }
        a = dz3Var;
        b = new ez3();
    }
}
