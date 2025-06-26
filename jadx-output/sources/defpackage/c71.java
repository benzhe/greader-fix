package defpackage;

import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class c71 implements zzp {
    public final db1 e;
    public AtomicBoolean f = new AtomicBoolean(false);

    public c71(db1 db1Var) {
        this.e = db1Var;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        this.f.set(true);
        this.e.D0(cb1.a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        this.e.D0(eb1.a);
    }
}
