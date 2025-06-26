package defpackage;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;

/* loaded from: classes.dex */
public final class ek0 {
    public final NativeCustomFormatAd.OnCustomFormatAdLoadedListener a;
    public final NativeCustomFormatAd.OnCustomClickListener b;
    public NativeCustomFormatAd c;

    public ek0(NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
        this.a = onCustomFormatAdLoadedListener;
        this.b = onCustomClickListener;
    }

    public static NativeCustomFormatAd a(ek0 ek0Var, q80 q80Var) {
        NativeCustomFormatAd ik0Var;
        synchronized (ek0Var) {
            ik0Var = ek0Var.c;
            if (ik0Var == null) {
                ik0Var = new ik0(q80Var);
                ek0Var.c = ik0Var;
            }
        }
        return ik0Var;
    }
}
