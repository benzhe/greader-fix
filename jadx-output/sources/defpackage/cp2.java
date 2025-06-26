package defpackage;

import java.util.Set;

/* loaded from: classes.dex */
public final class cp2 extends xd1<fp2> implements xo2<ap2> {
    public cp2(Set<sf1<fp2>> set) {
        super(set);
    }

    @Override // defpackage.xo2
    public final void O(final lo2<ap2, ?> lo2Var, final Throwable th) {
        D0(new zd1(lo2Var, th) { // from class: dp2
            public final lo2 a;
            public final Throwable b;

            {
                this.a = lo2Var;
                this.b = th;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // defpackage.zd1
            public final void e(Object obj) {
                lo2 lo2Var2 = this.a;
                ((fp2) obj).d((ap2) lo2Var2.e, lo2Var2.f, this.b);
            }
        });
    }

    @Override // defpackage.xo2
    public final void R(final lo2<ap2, ?> lo2Var) {
        D0(new zd1(lo2Var) { // from class: ep2
            public final lo2 a;

            {
                this.a = lo2Var;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // defpackage.zd1
            public final void e(Object obj) {
                lo2 lo2Var2 = this.a;
                ((fp2) obj).A((ap2) lo2Var2.e, lo2Var2.f);
            }
        });
    }

    @Override // defpackage.xo2
    public final void U(final lo2<ap2, ?> lo2Var) {
        D0(new zd1(lo2Var) { // from class: gp2
            public final lo2 a;

            {
                this.a = lo2Var;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // defpackage.zd1
            public final void e(Object obj) {
                lo2 lo2Var2 = this.a;
                ((fp2) obj).C((ap2) lo2Var2.e, lo2Var2.f);
            }
        });
    }

    @Override // defpackage.xo2
    public final void Z(final lo2<ap2, ?> lo2Var) {
        D0(new zd1(lo2Var) { // from class: bp2
            public final lo2 a;

            {
                this.a = lo2Var;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // defpackage.zd1
            public final void e(Object obj) {
                lo2 lo2Var2 = this.a;
                ((fp2) obj).z((ap2) lo2Var2.e, lo2Var2.f);
            }
        });
    }
}
