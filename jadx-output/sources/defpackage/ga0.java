package defpackage;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;

/* loaded from: classes.dex */
public final class ga0 extends m90 {
    public final OnAdManagerAdViewLoadedListener e;

    public ga0(OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener) {
        this.e = onAdManagerAdViewLoadedListener;
    }

    @Override // defpackage.j90
    public final void G6(it3 it3Var, x20 x20Var) {
        if (it3Var == null || x20Var == null) {
            return;
        }
        AdManagerAdView adManagerAdView = new AdManagerAdView((Context) y20.l0(x20Var));
        try {
            if (it3Var.zzko() instanceof hr3) {
                hr3 hr3Var = (hr3) it3Var.zzko();
                adManagerAdView.setAdListener(hr3Var != null ? hr3Var.e : null);
            }
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
        try {
            if (it3Var.zzkn() instanceof um3) {
                um3 um3Var = (um3) it3Var.zzkn();
                adManagerAdView.setAppEventListener(um3Var != null ? um3Var.f : null);
            }
        } catch (RemoteException e2) {
            is0.zzc("", e2);
        }
        zr0.b.post(new ja0(this, adManagerAdView, it3Var));
    }
}
