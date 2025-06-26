package defpackage;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;

/* loaded from: classes.dex */
public final class q50 extends r50 {
    public final zzg e;
    public final String f;
    public final String g;

    public q50(zzg zzgVar, String str, String str2) {
        this.e = zzgVar;
        this.f = str;
        this.g = str2;
    }

    @Override // defpackage.s50
    public final void R1(x20 x20Var) {
        if (x20Var == null) {
            return;
        }
        this.e.zzh((View) y20.l0(x20Var));
    }

    @Override // defpackage.s50
    public final String e5() {
        return this.f;
    }

    @Override // defpackage.s50
    public final String getContent() {
        return this.g;
    }

    @Override // defpackage.s50
    public final void recordClick() {
        this.e.zzkg();
    }

    @Override // defpackage.s50
    public final void recordImpression() {
        this.e.zzkh();
    }
}
