package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class wr1 implements fp2 {
    public Map<ap2, yr1> e;
    public ep3 f;

    public wr1(ep3 ep3Var, Map<ap2, yr1> map) {
        this.e = map;
        this.f = ep3Var;
    }

    @Override // defpackage.fp2
    public final void A(ap2 ap2Var, String str) {
        if (this.e.containsKey(ap2Var)) {
            this.f.b(this.e.get(ap2Var).a);
        }
    }

    @Override // defpackage.fp2
    public final void C(ap2 ap2Var, String str) {
        if (this.e.containsKey(ap2Var)) {
            this.f.b(this.e.get(ap2Var).b);
        }
    }

    @Override // defpackage.fp2
    public final void d(ap2 ap2Var, String str, Throwable th) {
        if (this.e.containsKey(ap2Var)) {
            this.f.b(this.e.get(ap2Var).c);
        }
    }

    @Override // defpackage.fp2
    public final void z(ap2 ap2Var, String str) {
    }
}
