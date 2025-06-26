package defpackage;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class mg5 implements no5, mo5 {
    public final Map<Class<?>, ConcurrentHashMap<lo5<Object>, Executor>> a = new HashMap();
    public Queue<ko5<?>> b = new ArrayDeque();
    public final Executor c;

    public mg5(Executor executor) {
        this.c = executor;
    }

    @Override // defpackage.no5
    public <T> void a(Class<T> cls, lo5<? super T> lo5Var) {
        b(cls, this.c, lo5Var);
    }

    @Override // defpackage.no5
    public synchronized <T> void b(Class<T> cls, Executor executor, lo5<? super T> lo5Var) {
        Objects.requireNonNull(cls);
        Objects.requireNonNull(lo5Var);
        Objects.requireNonNull(executor);
        if (!this.a.containsKey(cls)) {
            this.a.put(cls, new ConcurrentHashMap<>());
        }
        this.a.get(cls).put(lo5Var, executor);
    }
}
