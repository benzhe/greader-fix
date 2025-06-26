package defpackage;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class y62 {
    public final dk1 a;
    public final w52 b;
    public final da1 c;

    public y62(dk1 dk1Var, pp2 pp2Var) {
        this.a = dk1Var;
        final w52 w52Var = new w52(pp2Var);
        this.b = w52Var;
        final ed0 ed0Var = dk1Var.e;
        this.c = new da1(w52Var, ed0Var) { // from class: x62
            public final w52 e;
            public final ed0 f;

            {
                this.e = w52Var;
                this.f = ed0Var;
            }

            @Override // defpackage.da1
            public final void Q(zzvh zzvhVar) {
                w52 w52Var2 = this.e;
                ed0 ed0Var2 = this.f;
                w52Var2.Q(zzvhVar);
                if (ed0Var2 != null) {
                    try {
                        ed0Var2.M4(zzvhVar);
                    } catch (RemoteException e) {
                        is0.zze("#007 Could not call remote method.", e);
                    }
                }
                if (ed0Var2 != null) {
                    try {
                        ed0Var2.Y5(zzvhVar.e);
                    } catch (RemoteException e2) {
                        is0.zze("#007 Could not call remote method.", e2);
                    }
                }
            }
        };
    }
}
