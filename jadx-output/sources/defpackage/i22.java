package defpackage;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class i22 extends ri0 {
    public mz1<vi0, g12> e;
    public final /* synthetic */ g22 f;

    public i22(g22 g22Var, mz1 mz1Var, j22 j22Var) {
        this.f = g22Var;
        this.e = mz1Var;
    }

    @Override // defpackage.oi0
    public final void T5(bh0 bh0Var) throws RemoteException {
        this.f.c = bh0Var;
        ((g12) this.e.c).onAdLoaded();
    }

    @Override // defpackage.oi0
    public final void j(String str) throws RemoteException {
        ((g12) this.e.c).t2(0, str);
    }

    @Override // defpackage.oi0
    public final void l(zzvh zzvhVar) throws RemoteException {
        ((g12) this.e.c).U(zzvhVar);
    }
}
