package defpackage;

import com.google.android.gms.ads.admanager.AdManagerAdView;

/* loaded from: classes.dex */
public final class ja0 implements Runnable {
    public final /* synthetic */ AdManagerAdView e;
    public final /* synthetic */ it3 f;
    public final /* synthetic */ ga0 g;

    public ja0(ga0 ga0Var, AdManagerAdView adManagerAdView, it3 it3Var) {
        this.g = ga0Var;
        this.e = adManagerAdView;
        this.f = it3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.e.zza(this.f)) {
            this.g.e.onAdManagerAdViewLoaded(this.e);
        } else {
            is0.zzez("Could not bind.");
        }
    }
}
