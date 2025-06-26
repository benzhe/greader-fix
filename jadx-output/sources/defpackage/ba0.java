package defpackage;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;

/* loaded from: classes.dex */
public final class ba0 {
    public final NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener a;
    public final NativeCustomTemplateAd.OnCustomClickListener b;
    public NativeCustomTemplateAd c;

    public ba0(NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
        this.a = onCustomTemplateAdLoadedListener;
        this.b = onCustomClickListener;
    }

    public static NativeCustomTemplateAd a(ba0 ba0Var, q80 q80Var) {
        NativeCustomTemplateAd v80Var;
        synchronized (ba0Var) {
            v80Var = ba0Var.c;
            if (v80Var == null) {
                v80Var = new v80(q80Var);
                ba0Var.c = v80Var;
            }
        }
        return v80Var;
    }
}
