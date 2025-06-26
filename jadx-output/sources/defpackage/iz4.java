package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class iz4 implements Runnable {
    public final /* synthetic */ AtomicReference e;
    public final /* synthetic */ sz4 f;

    public iz4(sz4 sz4Var, AtomicReference atomicReference) {
        this.f = sz4Var;
        this.e = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.e) {
            try {
                AtomicReference atomicReference = this.e;
                rx4 rx4Var = this.f.a;
                cs4 cs4Var = rx4Var.g;
                String strK = rx4Var.b().k();
                dw4<String> dw4Var = ew4.L;
                Objects.requireNonNull(cs4Var);
                atomicReference.set(strK == null ? dw4Var.a(null) : dw4Var.a(cs4Var.c.b(strK, dw4Var.a)));
                this.e.notify();
            } catch (Throwable th) {
                this.e.notify();
                throw th;
            }
        }
    }
}
