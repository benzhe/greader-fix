package defpackage;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;

/* loaded from: classes.dex */
public final class g52 implements zzg {
    public final /* synthetic */ sg1 a;

    public g52(sg1 sg1Var) {
        this.a = sg1Var;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzh(View view) {
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkg() {
        this.a.c().D0(aa1.a);
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkh() {
        this.a.d().onAdImpression();
        this.a.e().G0();
    }
}
