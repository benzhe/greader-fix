package defpackage;

import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.internal.ads.zzvh;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeoutException;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
public final class y22<T> implements rv2<T> {
    public final /* synthetic */ long a;
    public final /* synthetic */ String b;
    public final /* synthetic */ sk2 c;
    public final /* synthetic */ wk2 d;
    public final /* synthetic */ v22 e;

    public y22(v22 v22Var, long j, String str, sk2 sk2Var, wk2 wk2Var) {
        this.e = v22Var;
        this.a = j;
        this.b = str;
        this.c = sk2Var;
        this.d = wk2Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        zzvh zzvhVar;
        long jB = this.e.a.b() - this.a;
        int i = th instanceof TimeoutException ? 2 : th instanceof l22 ? 3 : th instanceof CancellationException ? 4 : th instanceof pl2 ? 5 : ((th instanceof bu1) && c50.l4(th).e == 3) ? 1 : 6;
        v22.a(this.e, this.b, i, jB, this.c.a0);
        v22 v22Var = this.e;
        if (v22Var.d) {
            v22Var.b.a(this.d, this.c, i, th instanceof oz1 ? (oz1) th : null, jB);
        }
        if (((Boolean) os3.j.f.a(y40.U4)).booleanValue()) {
            zzvh zzvhVarL4 = c50.l4(th);
            int i2 = zzvhVarL4.e;
            if ((i2 == 3 || i2 == 0) && (zzvhVar = zzvhVarL4.h) != null && !zzvhVar.g.equals(MobileAds.ERROR_DOMAIN)) {
                zzvhVarL4 = c50.l4(new oz1(dm2.MEDIATION_NO_FILL, zzvhVarL4.h));
            }
            this.e.e.a(this.c, jB, zzvhVarL4);
        }
    }

    @Override // defpackage.rv2
    public final void onSuccess(T t) {
        long jB = this.e.a.b() - this.a;
        v22.a(this.e, this.b, 0, jB, this.c.a0);
        v22 v22Var = this.e;
        if (v22Var.d) {
            v22Var.b.a(this.d, this.c, 0, null, jB);
        }
        if (((Boolean) os3.j.f.a(y40.U4)).booleanValue()) {
            this.e.e.a(this.c, jB, null);
        }
    }
}
