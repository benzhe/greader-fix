package defpackage;

/* loaded from: classes.dex */
public final class xj6 {
    public static final vj6 a;
    public static final vj6 b;

    static {
        vj6 vj6Var;
        try {
            vj6Var = (vj6) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            vj6Var = null;
        }
        a = vj6Var;
        b = new wj6();
    }
}
