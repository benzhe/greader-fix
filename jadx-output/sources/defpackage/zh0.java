package defpackage;

import android.os.RemoteException;
import com.google.ads.AdRequest;

/* loaded from: classes.dex */
public final class zh0 implements Runnable {
    public final /* synthetic */ AdRequest.ErrorCode e;
    public final /* synthetic */ wh0 f;

    public zh0(wh0 wh0Var, AdRequest.ErrorCode errorCode) {
        this.f = wh0Var;
        this.e = errorCode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f.a.onAdFailedToLoad(c50.Z0(this.e));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }
}
