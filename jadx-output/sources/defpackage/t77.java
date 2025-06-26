package defpackage;

import defpackage.z27;

/* loaded from: classes2.dex */
public final class t77 implements Runnable {
    public final /* synthetic */ q77 e;

    public t77(q77 q77Var) {
        this.e = q77Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.e.N.a(z27.a.INFO, "Entering SHUTDOWN state");
        this.e.s.a(i37.SHUTDOWN);
    }
}
