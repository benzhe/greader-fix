package defpackage;

import defpackage.z57;

/* loaded from: classes2.dex */
public class n67 implements a67 {
    public final x47 a;
    public final z57.a b;

    public n67(x47 x47Var, z57.a aVar) {
        c50.t(!x47Var.f(), "error must not be OK");
        this.a = x47Var;
        this.b = aVar;
    }

    @Override // defpackage.x37
    public y37 e() {
        throw new UnsupportedOperationException("Not a real transport");
    }

    @Override // defpackage.a67
    public y57 g(j47<?, ?> j47Var, i47 i47Var, x27 x27Var) {
        return new m67(this.a, this.b);
    }
}
