package defpackage;

import defpackage.z27;

/* loaded from: classes2.dex */
public class h77 implements Runnable {
    public final /* synthetic */ d77 e;

    public h77(d77 d77Var) {
        this.e = d77Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.e.j.a(z27.a.INFO, "Terminated");
        d77 d77Var = this.e;
        x77 x77Var = (x77) d77Var.e;
        q77.this.B.remove(d77Var);
        v37.b(q77.this.O.b, d77Var);
        q77.p(q77.this);
    }
}
