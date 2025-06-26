package defpackage;

import defpackage.of7;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class lq<T> implements qb7<T, T> {
    @Override // defpackage.qb7
    public w38<T> a(mb7<T> mb7Var) {
        im7.e(mb7Var, "upstream");
        lf7 lf7Var = new lf7(mb7Var.p().y(), Long.MAX_VALUE);
        Callable callable = of7.j;
        AtomicReference atomicReference = new AtomicReference();
        mb7<T> mb7VarY = new of7(new of7.d(atomicReference, callable), lf7Var, atomicReference, callable).y();
        im7.d(mb7VarY, "upstream\n               …              .refCount()");
        return mb7VarY;
    }
}
