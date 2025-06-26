package defpackage;

import java.nio.charset.Charset;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes.dex */
public final class ka4 {
    public static final ka4 c = new ka4();
    public final ConcurrentMap<Class<?>, na4<?>> b = new ConcurrentHashMap();
    public final oa4 a = new w94();

    public final <T> na4<T> a(Class<T> cls) {
        ga4 ga4Var;
        Class<?> cls2;
        Charset charset = j94.a;
        Objects.requireNonNull(cls, "messageType");
        na4<T> na4VarB = (na4) this.b.get(cls);
        if (na4VarB == null) {
            w94 w94Var = (w94) this.a;
            Objects.requireNonNull(w94Var);
            Class<?> cls3 = pa4.a;
            if (!c94.class.isAssignableFrom(cls) && (cls2 = pa4.a) != null && !cls2.isAssignableFrom(cls)) {
                throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            }
            ba4 ba4VarB = w94Var.a.b(cls);
            if (ba4VarB.a()) {
                if (c94.class.isAssignableFrom(cls)) {
                    ab4<?, ?> ab4Var = pa4.d;
                    q84<?> q84Var = s84.a;
                    ga4Var = new ga4(ab4Var, s84.a, ba4VarB.b());
                } else {
                    ab4<?, ?> ab4Var2 = pa4.b;
                    q84<?> q84Var2 = s84.b;
                    if (q84Var2 == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                    ga4Var = new ga4(ab4Var2, q84Var2, ba4VarB.b());
                }
                na4VarB = ga4Var;
            } else {
                if (c94.class.isAssignableFrom(cls)) {
                    if (ba4VarB.c() == 1) {
                        ha4 ha4Var = ia4.b;
                        s94 s94Var = s94.b;
                        ab4<?, ?> ab4Var3 = pa4.d;
                        q84<?> q84Var3 = s84.a;
                        na4VarB = fa4.B(ba4VarB, ha4Var, s94Var, ab4Var3, s84.a, aa4.b);
                    } else {
                        na4VarB = fa4.B(ba4VarB, ia4.b, s94.b, pa4.d, null, aa4.b);
                    }
                } else {
                    if (ba4VarB.c() == 1) {
                        ha4 ha4Var2 = ia4.a;
                        s94 s94Var2 = s94.a;
                        ab4<?, ?> ab4Var4 = pa4.b;
                        q84<?> q84Var4 = s84.b;
                        if (q84Var4 == null) {
                            throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                        }
                        na4VarB = fa4.B(ba4VarB, ha4Var2, s94Var2, ab4Var4, q84Var4, aa4.a);
                    } else {
                        na4VarB = fa4.B(ba4VarB, ia4.a, s94.a, pa4.c, null, aa4.a);
                    }
                }
            }
            na4<T> na4Var = (na4) this.b.putIfAbsent(cls, na4VarB);
            if (na4Var != null) {
                return na4Var;
            }
        }
        return na4VarB;
    }
}
