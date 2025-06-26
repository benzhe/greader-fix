package defpackage;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;

/* loaded from: classes.dex */
public final class ea0 extends e90 {
    public final /* synthetic */ ba0 e;

    public ea0(ba0 ba0Var, fa0 fa0Var) {
        this.e = ba0Var;
    }

    @Override // defpackage.a90
    public final void Y(q80 q80Var, String str) {
        ba0 ba0Var = this.e;
        NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener = ba0Var.b;
        if (onCustomClickListener == null) {
            return;
        }
        onCustomClickListener.onCustomClick(ba0.a(ba0Var, q80Var), str);
    }
}
