package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object] */
/* loaded from: classes2.dex */
public final class td7 extends AtomicReference<ic7> implements jb7, ic7 {
    @Override // defpackage.jb7
    public void a() {
        lazySet(yc7.DISPOSED);
    }

    @Override // defpackage.jb7
    public void b(Throwable th) {
        lazySet(yc7.DISPOSED);
        n56.z1(new mc7(th));
    }

    @Override // defpackage.jb7
    public void c(ic7 ic7Var) {
        yc7.w(this, ic7Var);
    }

    @Override // defpackage.ic7
    public void k() {
        yc7.i(this);
    }
}
