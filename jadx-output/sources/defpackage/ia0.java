package defpackage;

import com.google.android.gms.ads.formats.NativeAppInstallAd;

/* loaded from: classes.dex */
public final class ia0 extends x80 {
    public final NativeAppInstallAd.OnAppInstallAdLoadedListener e;

    public ia0(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
        this.e = onAppInstallAdLoadedListener;
    }

    @Override // defpackage.u80
    public final void P3(i80 i80Var) {
        this.e.onAppInstallAdLoaded(new n80(i80Var));
    }
}
