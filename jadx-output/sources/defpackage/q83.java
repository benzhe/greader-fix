package defpackage;

import java.nio.charset.Charset;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes.dex */
public final class q83 {
    public static final q83 c = new q83();
    public final ConcurrentMap<Class<?>, w83<?>> b = new ConcurrentHashMap();
    public final z83 a = new s73();

    public final <T> w83<T> a(T t) {
        return b(t.getClass());
    }

    public final <T> w83<T> b(Class<T> cls) {
        w83 w83VarO;
        w83 i83Var;
        Class<?> cls2;
        Charset charset = u63.a;
        Objects.requireNonNull(cls, "messageType");
        w83<T> w83Var = (w83) this.b.get(cls);
        if (w83Var != null) {
            return w83Var;
        }
        s73 s73Var = (s73) this.a;
        Objects.requireNonNull(s73Var);
        Class<?> cls3 = y83.a;
        if (!s63.class.isAssignableFrom(cls) && (cls2 = y83.a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
        d83 d83VarA = s73Var.a.a(cls);
        if (d83VarA.a()) {
            if (s63.class.isAssignableFrom(cls)) {
                l93<?, ?> l93Var = y83.d;
                g63<?> g63Var = h63.a;
                i83Var = new i83(l93Var, h63.a, d83VarA.b());
            } else {
                l93<?, ?> l93Var2 = y83.b;
                g63<?> g63Var2 = h63.b;
                if (g63Var2 == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                i83Var = new i83(l93Var2, g63Var2, d83VarA.b());
            }
            w83VarO = i83Var;
        } else {
            if (s63.class.isAssignableFrom(cls)) {
                if (d83VarA.c() == 1) {
                    k83 k83Var = m83.b;
                    o73 o73Var = o73.b;
                    l93<?, ?> l93Var3 = y83.d;
                    g63<?> g63Var3 = h63.a;
                    w83VarO = g83.o(d83VarA, k83Var, o73Var, l93Var3, h63.a, a83.b);
                } else {
                    w83VarO = g83.o(d83VarA, m83.b, o73.b, y83.d, null, a83.b);
                }
            } else {
                if (d83VarA.c() == 1) {
                    k83 k83Var2 = m83.a;
                    o73 o73Var2 = o73.a;
                    l93<?, ?> l93Var4 = y83.b;
                    g63<?> g63Var4 = h63.b;
                    if (g63Var4 == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                    w83VarO = g83.o(d83VarA, k83Var2, o73Var2, l93Var4, g63Var4, a83.a);
                } else {
                    w83VarO = g83.o(d83VarA, m83.a, o73.a, y83.c, null, a83.a);
                }
            }
        }
        w83<T> w83Var2 = (w83) this.b.putIfAbsent(cls, w83VarO);
        return w83Var2 != null ? w83Var2 : w83VarO;
    }
}
