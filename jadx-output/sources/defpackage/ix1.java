package defpackage;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzauj;
import com.google.android.gms.internal.ads.zzvh;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ix1 implements da1, ob1, sc1 {
    public final qp2 e;
    public final pp2 f;
    public final xr0 g;

    public ix1(qp2 qp2Var, pp2 pp2Var, xr0 xr0Var) {
        this.e = qp2Var;
        this.f = pp2Var;
        this.g = xr0Var;
    }

    @Override // defpackage.sc1
    public final void M(hl2 hl2Var) {
        this.e.a(hl2Var, this.g);
    }

    @Override // defpackage.da1
    public final void Q(zzvh zzvhVar) {
        qp2 qp2Var = this.e;
        qp2Var.a.put("action", "ftl");
        qp2Var.a.put("ftl", String.valueOf(zzvhVar.e));
        qp2Var.a.put("ed", zzvhVar.g);
        this.f.b(this.e);
    }

    @Override // defpackage.ob1
    public final void onAdLoaded() {
        pp2 pp2Var = this.f;
        qp2 qp2Var = this.e;
        qp2Var.a.put("action", "loaded");
        pp2Var.b(qp2Var);
    }

    @Override // defpackage.sc1
    public final void t(zzauj zzaujVar) {
        qp2 qp2Var = this.e;
        Bundle bundle = zzaujVar.e;
        Objects.requireNonNull(qp2Var);
        if (bundle.containsKey("cnt")) {
            qp2Var.a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            qp2Var.a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }
}
