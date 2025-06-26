package defpackage;

import androidx.work.impl.workers.ConstraintTrackingWorker;

/* loaded from: classes.dex */
public class zm implements Runnable {
    public final /* synthetic */ ie5 e;
    public final /* synthetic */ ConstraintTrackingWorker f;

    public zm(ConstraintTrackingWorker constraintTrackingWorker, ie5 ie5Var) {
        this.f = constraintTrackingWorker;
        this.e = ie5Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.f.j) {
            if (this.f.k) {
                this.f.c();
            } else {
                this.f.l.l(this.e);
            }
        }
    }
}
