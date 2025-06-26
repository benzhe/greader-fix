package defpackage;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;

/* loaded from: classes.dex */
public final class ev3 extends AdListener {
    public final Object a = new Object();
    public AdListener b;
    public final /* synthetic */ bv3 c;

    public ev3(bv3 bv3Var) {
        this.c = bv3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.ads.AdListener
    /* renamed from: A, reason: merged with bridge method [inline-methods] */
    public void onAdOpened() {
        synchronized (this.a) {
            AdListener adListener = this.b;
            if (adListener != null) {
                adListener.onAdOpened();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.ads.AdListener
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public void onAdClosed() {
        synchronized (this.a) {
            AdListener adListener = this.b;
            if (adListener != null) {
                adListener.onAdClosed();
            }
        }
    }

    private void r(int i) {
        synchronized (this.a) {
            AdListener adListener = this.b;
            if (adListener != null) {
                adListener.onAdFailedToLoad(i);
            }
        }
    }

    private void s(LoadAdError loadAdError) {
        synchronized (this.a) {
            AdListener adListener = this.b;
            if (adListener != null) {
                adListener.onAdFailedToLoad(loadAdError);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.ads.AdListener
    /* renamed from: t, reason: merged with bridge method [inline-methods] */
    public void onAdImpression() {
        synchronized (this.a) {
            AdListener adListener = this.b;
            if (adListener != null) {
                adListener.onAdImpression();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.ads.AdListener
    /* renamed from: x, reason: merged with bridge method [inline-methods] */
    public void onAdLeftApplication() {
        synchronized (this.a) {
            AdListener adListener = this.b;
            if (adListener != null) {
                adListener.onAdLeftApplication();
            }
        }
    }

    private void z() {
        synchronized (this.a) {
            AdListener adListener = this.b;
            if (adListener != null) {
                adListener.onAdLoaded();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(int i) {
        bv3 bv3Var = this.c;
        bv3Var.c.zza(bv3Var.r());
        r(i);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        bv3 bv3Var = this.c;
        bv3Var.c.zza(bv3Var.r());
        z();
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        bv3 bv3Var = this.c;
        bv3Var.c.zza(bv3Var.r());
        s(loadAdError);
    }
}
