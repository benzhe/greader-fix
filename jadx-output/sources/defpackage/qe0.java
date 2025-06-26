package defpackage;

import com.google.android.gms.ads.internal.util.zzd;

/* loaded from: classes.dex */
public final class qe0 implements bt0<we0> {
    public final /* synthetic */ oe0 a;

    public qe0(oe0 oe0Var) {
        this.a = oe0Var;
    }

    @Override // defpackage.bt0
    public final /* synthetic */ void zzg(we0 we0Var) {
        zzd.zzed("Releasing engine reference.");
        this.a.d.e();
    }
}
