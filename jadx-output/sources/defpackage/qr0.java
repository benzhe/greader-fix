package defpackage;

import com.google.android.gms.ads.internal.util.zza;
import com.google.android.gms.ads.internal.zzr;

/* loaded from: classes.dex */
public final class qr0 extends zza {
    public final /* synthetic */ or0 b;

    public qr0(or0 or0Var) {
        this.b = or0Var;
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwp() {
        or0 or0Var = this.b;
        b50 b50Var = new b50(or0Var.e, or0Var.f.e);
        synchronized (this.b.a) {
            try {
                zzr.zzle();
                f50.a(this.b.g, b50Var);
            } catch (IllegalArgumentException e) {
                is0.zzd("Cannot config CSI reporter.", e);
            }
        }
    }
}
