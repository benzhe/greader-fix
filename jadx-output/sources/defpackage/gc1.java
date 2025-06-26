package defpackage;

import com.google.android.gms.internal.ads.zzvv;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class gc1 extends xd1<hc1> implements va1, xb1 {
    public final sk2 f;
    public AtomicBoolean g;

    public gc1(Set<sf1<hc1>> set, sk2 sk2Var) {
        super(set);
        this.g = new AtomicBoolean();
        this.f = sk2Var;
    }

    public final void G0() {
        zzvv zzvvVar;
        if (((Boolean) os3.j.f.a(y40.x4)).booleanValue() && this.g.compareAndSet(false, true) && (zzvvVar = this.f.Z) != null && zzvvVar.e == 3) {
            D0(new zd1(this) { // from class: ec1
                public final gc1 a;

                {
                    this.a = this;
                }

                @Override // defpackage.zd1
                public final void e(Object obj) {
                    ((hc1) obj).s(this.a.f.Z);
                }
            });
        }
    }

    @Override // defpackage.xb1
    public final void g6() {
        if (this.f.b == 1) {
            G0();
        }
    }

    @Override // defpackage.va1
    public final void onAdImpression() {
        int i = this.f.b;
        if (i == 2 || i == 5 || i == 4 || i == 6) {
            G0();
        }
    }
}
