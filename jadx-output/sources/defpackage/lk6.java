package defpackage;

import java.nio.charset.Charset;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes.dex */
public final class lk6 {
    public static final lk6 c = new lk6();
    public final ConcurrentMap<Class<?>, qk6<?>> b = new ConcurrentHashMap();
    public final rk6 a = new sj6();

    public <T> qk6<T> a(Class<T> cls) {
        qk6 qk6VarB;
        qk6 dk6Var;
        Class<?> cls2;
        Charset charset = jj6.a;
        Objects.requireNonNull(cls, "messageType");
        qk6<T> qk6Var = (qk6) this.b.get(cls);
        if (qk6Var != null) {
            return qk6Var;
        }
        sj6 sj6Var = (sj6) this.a;
        Objects.requireNonNull(sj6Var);
        Class<?> cls3 = sk6.a;
        if (!gj6.class.isAssignableFrom(cls) && (cls2 = sk6.a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
        yj6 yj6VarA = sj6Var.a.a(cls);
        if (yj6VarA.a()) {
            if (gj6.class.isAssignableFrom(cls)) {
                yk6<?, ?> yk6Var = sk6.d;
                zi6<?> zi6Var = bj6.a;
                dk6Var = new dk6(yk6Var, bj6.a, yj6VarA.b());
            } else {
                yk6<?, ?> yk6Var2 = sk6.b;
                zi6<?> zi6Var2 = bj6.b;
                if (zi6Var2 == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                dk6Var = new dk6(yk6Var2, zi6Var2, yj6VarA.b());
            }
            qk6VarB = dk6Var;
        } else {
            kk6 kk6Var = kk6.PROTO2;
            if (gj6.class.isAssignableFrom(cls)) {
                if (yj6VarA.c() == kk6Var) {
                    ek6 ek6Var = gk6.b;
                    qj6 qj6Var = qj6.b;
                    yk6<?, ?> yk6Var3 = sk6.d;
                    zi6<?> zi6Var3 = bj6.a;
                    qk6VarB = ck6.B(yj6VarA, ek6Var, qj6Var, yk6Var3, bj6.a, xj6.b);
                } else {
                    qk6VarB = ck6.B(yj6VarA, gk6.b, qj6.b, sk6.d, null, xj6.b);
                }
            } else {
                if (yj6VarA.c() == kk6Var) {
                    ek6 ek6Var2 = gk6.a;
                    qj6 qj6Var2 = qj6.a;
                    yk6<?, ?> yk6Var4 = sk6.b;
                    zi6<?> zi6Var4 = bj6.b;
                    if (zi6Var4 == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                    qk6VarB = ck6.B(yj6VarA, ek6Var2, qj6Var2, yk6Var4, zi6Var4, xj6.a);
                } else {
                    qk6VarB = ck6.B(yj6VarA, gk6.a, qj6.a, sk6.c, null, xj6.a);
                }
            }
        }
        qk6<T> qk6Var2 = (qk6) this.b.putIfAbsent(cls, qk6VarB);
        return qk6Var2 != null ? qk6Var2 : qk6VarB;
    }

    public <T> qk6<T> b(T t) {
        return a(t.getClass());
    }
}
