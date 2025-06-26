package defpackage;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class t02 extends li0 {
    public mz1<vi0, g12> e;
    public final /* synthetic */ p02 f;

    public t02(p02 p02Var, mz1 mz1Var, u02 u02Var) {
        this.f = p02Var;
        this.e = mz1Var;
    }

    @Override // defpackage.ii0
    public final void N6(og0 og0Var) throws RemoteException {
        this.f.d = og0Var;
        ((g12) this.e.c).onAdLoaded();
    }

    @Override // defpackage.ii0
    public final void j(String str) throws RemoteException {
        ((g12) this.e.c).t2(0, str);
    }

    @Override // defpackage.ii0
    public final void l(zzvh zzvhVar) throws RemoteException {
        ((g12) this.e.c).U(zzvhVar);
    }

    @Override // defpackage.ii0
    public final void o2(x20 x20Var) throws RemoteException {
        this.f.c = (View) y20.l0(x20Var);
        ((g12) this.e.c).onAdLoaded();
    }
}
