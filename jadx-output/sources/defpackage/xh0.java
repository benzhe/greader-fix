package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class xh0 implements Runnable {
    public final /* synthetic */ wh0 e;

    public xh0(wh0 wh0Var) {
        this.e = wh0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.e.a.onAdLoaded();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }
}
