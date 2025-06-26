package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class q62 implements er3 {
    public ps3 e;

    @Override // defpackage.er3
    public final synchronized void onAdClicked() {
        ps3 ps3Var = this.e;
        if (ps3Var != null) {
            try {
                ps3Var.onAdClicked();
            } catch (RemoteException e) {
                is0.zzd("Remote Exception at onAdClicked.", e);
            }
        }
    }
}
