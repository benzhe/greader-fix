package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class q30 implements Runnable {
    public final /* synthetic */ r30 e;

    public q30(r30 r30Var) {
        this.e = r30Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        us3 us3Var = this.e.e.e;
        if (us3Var != null) {
            try {
                us3Var.onAdFailedToLoad(1);
            } catch (RemoteException e) {
                is0.zzd("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
