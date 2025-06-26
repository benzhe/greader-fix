package defpackage;

/* loaded from: classes2.dex */
public final class iq7 {
    public static final ThreadLocal<np7> a = new ThreadLocal<>();
    public static final iq7 b = null;

    public static final np7 a() {
        ThreadLocal<np7> threadLocal = a;
        np7 np7Var = threadLocal.get();
        if (np7Var != null) {
            return np7Var;
        }
        mo7 mo7Var = new mo7(Thread.currentThread());
        threadLocal.set(mo7Var);
        return mo7Var;
    }
}
