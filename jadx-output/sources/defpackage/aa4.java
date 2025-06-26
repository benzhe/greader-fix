package defpackage;

/* loaded from: classes.dex */
public final class aa4 {
    public static final z94 a;
    public static final z94 b;

    static {
        z94 z94Var;
        try {
            z94Var = (z94) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            z94Var = null;
        }
        a = z94Var;
        b = new z94();
    }
}
