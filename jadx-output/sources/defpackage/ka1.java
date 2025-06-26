package defpackage;

import com.google.android.gms.internal.ads.zzvh;
import java.util.Set;

/* loaded from: classes.dex */
public final class ka1 extends xd1<ra1> implements ha1 {
    public ka1(Set<sf1<ra1>> set) {
        super(set);
    }

    @Override // defpackage.ha1
    public final void B0() {
        D0(ma1.a);
    }

    @Override // defpackage.ha1
    public final void V(final zzvh zzvhVar) {
        D0(new zd1(zzvhVar) { // from class: na1
            public final zzvh a;

            {
                this.a = zzvhVar;
            }

            @Override // defpackage.zd1
            public final void e(Object obj) {
                ((ra1) obj).d(this.a);
            }
        });
    }

    @Override // defpackage.ha1
    public final void a0(vh1 vh1Var) {
    }
}
