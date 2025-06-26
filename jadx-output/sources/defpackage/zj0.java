package defpackage;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;

/* loaded from: classes.dex */
public final class zj0 implements NativeCustomFormatAd.DisplayOpenMeasurement {
    public final q80 a;

    public zj0(q80 q80Var) {
        this.a = q80Var;
        try {
            q80Var.u1();
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd.DisplayOpenMeasurement
    public final void setView(View view) {
        try {
            this.a.K2(new y20(view));
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd.DisplayOpenMeasurement
    public final boolean start() {
        try {
            return this.a.L6();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return false;
        }
    }
}
