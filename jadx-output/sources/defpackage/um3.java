package defpackage;

import com.google.android.gms.ads.admanager.AppEventListener;

/* loaded from: classes.dex */
public final class um3 extends ot3 {
    public final AppEventListener f;

    public um3(AppEventListener appEventListener) {
        this.f = appEventListener;
    }

    @Override // defpackage.pt3
    public final void onAppEvent(String str, String str2) {
        this.f.onAppEvent(str, str2);
    }
}
