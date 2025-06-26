package defpackage;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzvt;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class p51 extends j41 {
    public final p90 h;
    public final Runnable i;
    public final Executor j;

    public p51(i61 i61Var, p90 p90Var, Runnable runnable, Executor executor) {
        super(i61Var);
        this.h = p90Var;
        this.i = runnable;
        this.j = executor;
    }

    @Override // defpackage.f61
    public final void b() {
        final AtomicReference atomicReference = new AtomicReference(this.i);
        final Runnable runnable = new Runnable(atomicReference) { // from class: s51
            public final AtomicReference e;

            {
                this.e = atomicReference;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Runnable runnable2 = (Runnable) this.e.getAndSet(null);
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        };
        this.j.execute(new Runnable(this, runnable) { // from class: r51
            public final p51 e;
            public final Runnable f;

            {
                this.e = this;
                this.f = runnable;
            }

            @Override // java.lang.Runnable
            public final void run() {
                p51 p51Var = this.e;
                Runnable runnable2 = this.f;
                Objects.requireNonNull(p51Var);
                try {
                    if (p51Var.h.H5(new y20(runnable2))) {
                        return;
                    }
                    runnable2.run();
                } catch (RemoteException unused) {
                    runnable2.run();
                }
            }
        });
    }

    @Override // defpackage.j41
    public final su3 c() {
        return null;
    }

    @Override // defpackage.j41
    public final void d(ViewGroup viewGroup, zzvt zzvtVar) {
    }

    @Override // defpackage.j41
    public final uk2 e() {
        return null;
    }

    @Override // defpackage.j41
    public final View f() {
        return null;
    }

    @Override // defpackage.j41
    public final uk2 g() {
        return null;
    }

    @Override // defpackage.j41
    public final int h() {
        return 0;
    }

    @Override // defpackage.j41
    public final void i() {
    }
}
