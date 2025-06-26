package defpackage;

import com.google.android.gms.ads.formats.NativeContentAd;

/* loaded from: classes.dex */
public final class la0 extends y80 {
    public final NativeContentAd.OnContentAdLoadedListener e;

    public la0(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
        this.e = onContentAdLoadedListener;
    }

    @Override // defpackage.z80
    public final void T1(m80 m80Var) {
        this.e.onContentAdLoaded(new r80(m80Var));
    }
}
