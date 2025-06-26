package defpackage;

/* loaded from: classes.dex */
public final class gm4 {
    public static final em4 a;
    public static final em4 b;

    static {
        em4 em4Var;
        try {
            em4Var = (em4) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            em4Var = null;
        }
        a = em4Var;
        b = new hm4();
    }
}
