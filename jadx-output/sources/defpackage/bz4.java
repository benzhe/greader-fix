package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class bz4 implements Runnable {
    public final /* synthetic */ long e;
    public final /* synthetic */ sz4 f;

    public bz4(sz4 sz4Var, long j) {
        this.f = sz4Var;
        this.e = j;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.f.l(this.e, true);
        this.f.a.z().z(new AtomicReference<>());
    }
}
