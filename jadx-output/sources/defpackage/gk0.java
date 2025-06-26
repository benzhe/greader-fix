package defpackage;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;

/* loaded from: classes.dex */
public final class gk0 extends e90 {
    public final /* synthetic */ ek0 e;

    public gk0(ek0 ek0Var, dk0 dk0Var) {
        this.e = ek0Var;
    }

    @Override // defpackage.a90
    public final void Y(q80 q80Var, String str) {
        ek0 ek0Var = this.e;
        NativeCustomFormatAd.OnCustomClickListener onCustomClickListener = ek0Var.b;
        if (onCustomClickListener == null) {
            return;
        }
        onCustomClickListener.onCustomClick(ek0.a(ek0Var, q80Var), str);
    }
}
