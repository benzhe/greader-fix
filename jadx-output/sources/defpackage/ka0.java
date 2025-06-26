package defpackage;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;

/* loaded from: classes.dex */
public final class ka0 extends m90 {
    public final OnPublisherAdViewLoadedListener e;

    public ka0(OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener) {
        this.e = onPublisherAdViewLoadedListener;
    }

    @Override // defpackage.j90
    public final void G6(it3 it3Var, x20 x20Var) {
        if (it3Var == null || x20Var == null) {
            return;
        }
        PublisherAdView publisherAdView = new PublisherAdView((Context) y20.l0(x20Var));
        try {
            if (it3Var.zzko() instanceof hr3) {
                hr3 hr3Var = (hr3) it3Var.zzko();
                publisherAdView.setAdListener(hr3Var != null ? hr3Var.e : null);
            }
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
        try {
            if (it3Var.zzkn() instanceof sr3) {
                sr3 sr3Var = (sr3) it3Var.zzkn();
                publisherAdView.setAppEventListener(sr3Var != null ? sr3Var.f : null);
            }
        } catch (RemoteException e2) {
            is0.zzc("", e2);
        }
        zr0.b.post(new na0(this, publisherAdView, it3Var));
    }
}
