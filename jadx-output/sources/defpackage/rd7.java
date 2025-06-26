package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object] */
/* loaded from: classes2.dex */
public final class rd7 extends AtomicReference<ic7> implements jb7, ic7, tc7<Throwable> {
    public final tc7<? super Throwable> e;
    public final qc7 f;

    public rd7(qc7 qc7Var) {
        this.e = this;
        this.f = qc7Var;
    }

    @Override // defpackage.jb7
    public void a() {
        try {
            this.f.run();
        } catch (Throwable th) {
            n56.r2(th);
            n56.z1(th);
        }
        lazySet(yc7.DISPOSED);
    }

    @Override // defpackage.tc7
    public void accept(Throwable th) throws Exception {
        n56.z1(new mc7(th));
    }

    @Override // defpackage.jb7
    public void b(Throwable th) {
        try {
            this.e.accept(th);
        } catch (Throwable th2) {
            n56.r2(th2);
            n56.z1(th2);
        }
        lazySet(yc7.DISPOSED);
    }

    @Override // defpackage.jb7
    public void c(ic7 ic7Var) {
        yc7.w(this, ic7Var);
    }

    @Override // defpackage.ic7
    public void k() {
        yc7.i(this);
    }

    public rd7(tc7<? super Throwable> tc7Var, qc7 qc7Var) {
        this.e = tc7Var;
        this.f = qc7Var;
    }
}
