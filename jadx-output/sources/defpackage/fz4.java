package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class fz4 implements Runnable {
    public final /* synthetic */ AtomicReference e;
    public final /* synthetic */ String f;
    public final /* synthetic */ String g;
    public final /* synthetic */ sz4 h;

    public fz4(sz4 sz4Var, AtomicReference atomicReference, String str, String str2) {
        this.h = sz4Var;
        this.e = atomicReference;
        this.f = str;
        this.g = str2;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        h15 h15VarZ = this.h.a.z();
        AtomicReference atomicReference = this.e;
        String str = this.f;
        String str2 = this.g;
        h15VarZ.d();
        h15VarZ.f();
        h15VarZ.t(new y05(h15VarZ, atomicReference, str, str2, h15VarZ.v(false)));
    }
}
