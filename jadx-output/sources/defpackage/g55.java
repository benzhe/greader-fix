package defpackage;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class g55 implements Runnable {
    public final /* synthetic */ e55 e;
    public final /* synthetic */ Callable f;

    public g55(e55 e55Var, Callable callable) {
        this.e = e55Var;
        this.f = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.e.s(this.f.call());
        } catch (Exception e) {
            this.e.r(e);
        }
    }
}
