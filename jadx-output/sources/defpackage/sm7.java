package defpackage;

import java.util.Objects;

/* loaded from: classes2.dex */
public class sm7 {
    public static final tm7 a;
    public static final hn7[] b;

    static {
        tm7 tm7Var = null;
        try {
            tm7Var = (tm7) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (tm7Var == null) {
            tm7Var = new tm7();
        }
        a = tm7Var;
        b = new hn7[0];
    }

    public static hn7 a(Class cls) {
        Objects.requireNonNull(a);
        return new em7(cls);
    }
}
