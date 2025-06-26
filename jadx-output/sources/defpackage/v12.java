package defpackage;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class v12 extends mi0 {
    public mz1<vi0, g12> e;

    public v12(t12 t12Var, mz1 mz1Var) {
        this.e = mz1Var;
    }

    @Override // defpackage.ni0
    public final void h0() throws RemoteException {
        ((g12) this.e.c).onAdLoaded();
    }

    @Override // defpackage.ni0
    public final void j(String str) throws RemoteException {
        ((g12) this.e.c).t2(0, str);
    }

    @Override // defpackage.ni0
    public final void l(zzvh zzvhVar) throws RemoteException {
        ((g12) this.e.c).U(zzvhVar);
    }
}
