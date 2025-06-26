package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class ez4 implements Runnable {
    public final /* synthetic */ AtomicReference e;
    public final /* synthetic */ sz4 f;

    public ez4(sz4 sz4Var, AtomicReference atomicReference) {
        this.f = sz4Var;
        this.e = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.e) {
            try {
                AtomicReference atomicReference = this.e;
                rx4 rx4Var = this.f.a;
                atomicReference.set(Boolean.valueOf(rx4Var.g.s(rx4Var.b().k(), ew4.K)));
            } finally {
                this.e.notify();
            }
        }
    }
}
