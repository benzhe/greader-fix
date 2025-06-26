package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final /* synthetic */ class y30 implements Runnable {
    public final no0 e;

    public y30(no0 no0Var) {
        this.e = no0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        no0 no0Var = this.e;
        if (no0Var != null) {
            try {
                no0Var.H4(1);
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
