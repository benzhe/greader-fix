package defpackage;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class q42 implements zzg {
    public final x91 a;
    public final qa1 b;
    public final wf1 c;
    public final rf1 d;
    public final q21 e;
    public AtomicBoolean f = new AtomicBoolean(false);

    public q42(x91 x91Var, qa1 qa1Var, wf1 wf1Var, rf1 rf1Var, q21 q21Var) {
        this.a = x91Var;
        this.b = qa1Var;
        this.c = wf1Var;
        this.d = rf1Var;
        this.e = q21Var;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final synchronized void zzh(View view) {
        if (this.f.compareAndSet(false, true)) {
            this.e.onAdImpression();
            this.d.G0(view);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkg() {
        if (this.f.get()) {
            this.a.D0(aa1.a);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkh() {
        if (this.f.get()) {
            this.b.onAdImpression();
            this.c.G0();
        }
    }
}
