package defpackage;

import com.google.android.gms.ads.doubleclick.PublisherAdView;

/* loaded from: classes.dex */
public final class na0 implements Runnable {
    public final /* synthetic */ PublisherAdView e;
    public final /* synthetic */ it3 f;
    public final /* synthetic */ ka0 g;

    public na0(ka0 ka0Var, PublisherAdView publisherAdView, it3 it3Var) {
        this.g = ka0Var;
        this.e = publisherAdView;
        this.f = it3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.e.zza(this.f)) {
            this.g.e.onPublisherAdViewLoaded(this.e);
        } else {
            is0.zzez("Could not bind.");
        }
    }
}
