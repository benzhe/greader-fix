package defpackage;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class i32 extends si0 {
    public mz1<vi0, g12> e;

    public i32(g32 g32Var, mz1 mz1Var) {
        this.e = mz1Var;
    }

    @Override // defpackage.ti0
    public final void h0() throws RemoteException {
        ((g12) this.e.c).onAdLoaded();
    }

    @Override // defpackage.ti0
    public final void j(String str) throws RemoteException {
        ((g12) this.e.c).t2(0, str);
    }

    @Override // defpackage.ti0
    public final void l(zzvh zzvhVar) throws RemoteException {
        ((g12) this.e.c).U(zzvhVar);
    }
}
