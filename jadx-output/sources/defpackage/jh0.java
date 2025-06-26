package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;

/* loaded from: classes.dex */
public final class jh0 implements InitializationCompleteCallback {
    public final /* synthetic */ pc0 a;

    public jh0(pc0 pc0Var) {
        this.a = pc0Var;
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationFailed(String str) {
        try {
            this.a.onInitializationFailed(str);
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationSucceeded() {
        try {
            this.a.onInitializationSucceeded();
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }
}
