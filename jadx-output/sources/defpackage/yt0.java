package defpackage;

import com.google.android.gms.internal.ads.zzbcb;

/* loaded from: classes.dex */
public final class yt0 implements Runnable {
    public final /* synthetic */ boolean e;
    public final /* synthetic */ zzbcb f;

    public yt0(zzbcb zzbcbVar, boolean z) {
        this.f = zzbcbVar;
        this.e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbcb zzbcbVar = this.f;
        String[] strArr = {"isVisible", String.valueOf(this.e)};
        int i = zzbcb.v;
        zzbcbVar.h("windowVisibilityChanged", strArr);
    }
}
