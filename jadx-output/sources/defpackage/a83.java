package defpackage;

/* loaded from: classes.dex */
public final class a83 {
    public static final y73 a;
    public static final y73 b;

    static {
        y73 y73Var;
        try {
            y73Var = (y73) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            y73Var = null;
        }
        a = y73Var;
        b = new b83();
    }
}
