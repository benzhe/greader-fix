package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class s30 implements Runnable {
    public final /* synthetic */ t30 e;

    public s30(t30 t30Var) {
        this.e = t30Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        us3 us3Var = this.e.e;
        if (us3Var != null) {
            try {
                us3Var.onAdFailedToLoad(1);
            } catch (RemoteException e) {
                is0.zzd("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
