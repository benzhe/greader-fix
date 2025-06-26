package defpackage;

import defpackage.q77;

/* loaded from: classes2.dex */
public class z77 implements Runnable {
    public final /* synthetic */ d77 e;
    public final /* synthetic */ q77.u f;

    public z77(q77.u uVar, d77 d77Var) {
        this.f = uVar;
        this.e = d77Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        v37 v37Var = q77.this.O;
        v37.a(v37Var.b, this.e);
        q77.this.B.add(this.e);
    }
}
