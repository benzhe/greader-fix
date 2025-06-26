package defpackage;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaat;
import com.google.android.gms.internal.ads.zzajm;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class v30 extends cu3 {
    public tc0 e;

    @Override // defpackage.zt3
    public final void B6(String str) throws RemoteException {
    }

    @Override // defpackage.zt3
    public final boolean D2() throws RemoteException {
        return false;
    }

    @Override // defpackage.zt3
    public final List<zzajm> E1() throws RemoteException {
        return Collections.emptyList();
    }

    @Override // defpackage.zt3
    public final String E3() {
        return "";
    }

    @Override // defpackage.zt3
    public final void H0() {
    }

    @Override // defpackage.zt3
    public final void J3(String str, x20 x20Var) throws RemoteException {
    }

    @Override // defpackage.zt3
    public final void L1(boolean z) throws RemoteException {
    }

    @Override // defpackage.zt3
    public final void L4(hg0 hg0Var) throws RemoteException {
    }

    @Override // defpackage.zt3
    public final void N2(zzaat zzaatVar) throws RemoteException {
    }

    @Override // defpackage.zt3
    public final void Z5(String str) throws RemoteException {
    }

    @Override // defpackage.zt3
    public final void e4(tc0 tc0Var) throws RemoteException {
        this.e = tc0Var;
    }

    @Override // defpackage.zt3
    public final void k5(float f) throws RemoteException {
    }

    @Override // defpackage.zt3
    public final void m0() throws RemoteException {
        is0.zzex("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        zr0.b.post(new Runnable(this) { // from class: u30
            public final v30 e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                tc0 tc0Var = this.e.e;
                if (tc0Var != null) {
                    try {
                        tc0Var.O5(Collections.emptyList());
                    } catch (RemoteException e) {
                        is0.zzd("Could not notify onComplete event.", e);
                    }
                }
            }
        });
    }

    @Override // defpackage.zt3
    public final void r0(x20 x20Var, String str) throws RemoteException {
    }

    @Override // defpackage.zt3
    public final float v3() throws RemoteException {
        return 1.0f;
    }
}
