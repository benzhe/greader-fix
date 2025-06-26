package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class a40 implements Runnable {
    public final /* synthetic */ b40 e;

    public a40(b40 b40Var) {
        this.e = b40Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        pn0 pn0Var = this.e.f;
        if (pn0Var != null) {
            try {
                pn0Var.onRewardedVideoAdFailedToLoad(1);
            } catch (RemoteException e) {
                is0.zzd("Could not notify onRewardedVideoAdFailedToLoad event.", e);
            }
        }
    }
}
