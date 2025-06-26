package defpackage;

import com.google.android.gms.ads.AdLoadCallback;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class kr3<AdT> extends ys3 {
    public final AdLoadCallback<AdT> e;
    public final AdT f;

    public kr3(AdLoadCallback<AdT> adLoadCallback, AdT adt) {
        this.e = adLoadCallback;
        this.f = adt;
    }

    @Override // defpackage.vs3
    public final void Q(zzvh zzvhVar) {
        AdLoadCallback<AdT> adLoadCallback = this.e;
        if (adLoadCallback != null) {
            adLoadCallback.onAdFailedToLoad(zzvhVar.C());
        }
    }

    @Override // defpackage.vs3
    public final void onAdLoaded() {
        AdT adt;
        AdLoadCallback<AdT> adLoadCallback = this.e;
        if (adLoadCallback == null || (adt = this.f) == null) {
            return;
        }
        adLoadCallback.onAdLoaded(adt);
    }
}
