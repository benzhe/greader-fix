package defpackage;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;

/* loaded from: classes.dex */
public final class c52 implements zzg {
    public zzg a;

    @Override // com.google.android.gms.ads.internal.zzg
    public final synchronized void zzh(View view) {
        zzg zzgVar = this.a;
        if (zzgVar != null) {
            zzgVar.zzh(view);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final synchronized void zzkg() {
        zzg zzgVar = this.a;
        if (zzgVar != null) {
            zzgVar.zzkg();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final synchronized void zzkh() {
        zzg zzgVar = this.a;
        if (zzgVar != null) {
            zzgVar.zzkh();
        }
    }
}
