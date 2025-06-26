package defpackage;

import android.os.Binder;

/* loaded from: classes.dex */
public final class nc0 implements Runnable {
    public final /* synthetic */ ic0 e;

    public nc0(ic0 ic0Var) {
        this.e = ic0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ic0 ic0Var = this.e;
        if (ic0Var.a == null) {
            return;
        }
        ic0Var.a.disconnect();
        Binder.flushPendingCommands();
    }
}
