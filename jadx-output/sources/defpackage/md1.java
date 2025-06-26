package defpackage;

import java.util.Set;

/* loaded from: classes.dex */
public final class md1 extends xd1<ud1> implements ud1 {
    public md1(Set<sf1<ud1>> set) {
        super(set);
    }

    @Override // defpackage.ud1
    public final void X(final boolean z) {
        D0(new zd1(z) { // from class: td1
            public final boolean a;

            {
                this.a = z;
            }

            @Override // defpackage.zd1
            public final void e(Object obj) {
                ((ud1) obj).X(this.a);
            }
        });
    }

    @Override // defpackage.ud1
    public final void d0(rp3 rp3Var) {
        D0(new pd1(rp3Var));
    }

    @Override // defpackage.ud1
    public final void l0(rp3 rp3Var) {
        D0(new od1(rp3Var));
    }

    @Override // defpackage.ud1
    public final void o0() {
        D0(sd1.a);
    }

    @Override // defpackage.ud1
    public final void t0(final boolean z) {
        D0(new zd1(z) { // from class: qd1
            public final boolean a;

            {
                this.a = z;
            }

            @Override // defpackage.zd1
            public final void e(Object obj) {
                ((ud1) obj).t0(this.a);
            }
        });
    }

    @Override // defpackage.ud1
    public final void z(rp3 rp3Var) {
        D0(new rd1(rp3Var));
    }
}
