package defpackage;

import java.nio.charset.Charset;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes.dex */
public final class km4 {
    public static final km4 c = new km4();
    public final ConcurrentMap<Class<?>, om4<?>> b = new ConcurrentHashMap();
    public final nm4 a = new nl4();

    public final <T> om4<T> a(Class<T> cls) {
        om4 om4VarH;
        om4 cm4Var;
        Class<?> cls2;
        Charset charset = rk4.a;
        Objects.requireNonNull(cls, "messageType");
        om4<T> om4Var = (om4) this.b.get(cls);
        if (om4Var != null) {
            return om4Var;
        }
        nl4 nl4Var = (nl4) this.a;
        Objects.requireNonNull(nl4Var);
        Class<?> cls3 = qm4.a;
        if (!pk4.class.isAssignableFrom(cls) && (cls2 = qm4.a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
        yl4 yl4VarA = nl4Var.a.a(cls);
        if (yl4VarA.b()) {
            if (pk4.class.isAssignableFrom(cls)) {
                cn4<?, ?> cn4Var = qm4.d;
                fk4<?> fk4Var = hk4.a;
                cm4Var = new cm4(cn4Var, hk4.a, yl4VarA.c());
            } else {
                cn4<?, ?> cn4Var2 = qm4.b;
                fk4<?> fk4Var2 = hk4.b;
                if (fk4Var2 == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                cm4Var = new cm4(cn4Var2, fk4Var2, yl4VarA.c());
            }
            om4VarH = cm4Var;
        } else {
            if (pk4.class.isAssignableFrom(cls)) {
                if (yl4VarA.a() == 1) {
                    em4 em4Var = gm4.b;
                    kl4 kl4Var = kl4.b;
                    cn4<?, ?> cn4Var3 = qm4.d;
                    fk4<?> fk4Var3 = hk4.a;
                    om4VarH = dm4.h(yl4VarA, em4Var, kl4Var, cn4Var3, hk4.a, vl4.b);
                } else {
                    om4VarH = dm4.h(yl4VarA, gm4.b, kl4.b, qm4.d, null, vl4.b);
                }
            } else {
                if (yl4VarA.a() == 1) {
                    em4 em4Var2 = gm4.a;
                    kl4 kl4Var2 = kl4.a;
                    cn4<?, ?> cn4Var4 = qm4.b;
                    fk4<?> fk4Var4 = hk4.b;
                    if (fk4Var4 == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                    om4VarH = dm4.h(yl4VarA, em4Var2, kl4Var2, cn4Var4, fk4Var4, vl4.a);
                } else {
                    om4VarH = dm4.h(yl4VarA, gm4.a, kl4.a, qm4.c, null, vl4.a);
                }
            }
        }
        om4<T> om4Var2 = (om4) this.b.putIfAbsent(cls, om4VarH);
        return om4Var2 != null ? om4Var2 : om4VarH;
    }

    public final <T> om4<T> b(T t) {
        return a(t.getClass());
    }
}
