package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;

/* loaded from: classes.dex */
public final class zo1 extends VideoController.VideoLifecycleCallbacks {
    public final wj1 a;

    public zo1(wj1 wj1Var) {
        this.a = wj1Var;
    }

    public static xu3 a(wj1 wj1Var) {
        su3 su3VarH = wj1Var.h();
        if (su3VarH == null) {
            return null;
        }
        try {
            return su3VarH.K4();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoEnd() {
        xu3 xu3VarA = a(this.a);
        if (xu3VarA == null) {
            return;
        }
        try {
            xu3VarA.X();
        } catch (RemoteException e) {
            is0.zzd("Unable to call onVideoEnd()", e);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoPause() {
        xu3 xu3VarA = a(this.a);
        if (xu3VarA == null) {
            return;
        }
        try {
            xu3VarA.onVideoPause();
        } catch (RemoteException e) {
            is0.zzd("Unable to call onVideoEnd()", e);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoStart() {
        xu3 xu3VarA = a(this.a);
        if (xu3VarA == null) {
            return;
        }
        try {
            xu3VarA.onVideoStart();
        } catch (RemoteException e) {
            is0.zzd("Unable to call onVideoEnd()", e);
        }
    }
}
