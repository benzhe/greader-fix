package defpackage;

/* loaded from: classes.dex */
public final class m83 {
    public static final k83 a;
    public static final k83 b;

    static {
        k83 k83Var;
        try {
            k83Var = (k83) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            k83Var = null;
        }
        a = k83Var;
        b = new j83();
    }
}
