package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class we1 implements cb3<v22> {
    public final yd1 a;
    public final mb3<b20> b;
    public final mb3<x22> c;
    public final mb3<nz1> d;

    public we1(yd1 yd1Var, mb3<b20> mb3Var, mb3<x22> mb3Var2, mb3<nz1> mb3Var3) {
        this.a = yd1Var;
        this.b = mb3Var;
        this.c = mb3Var2;
        this.d = mb3Var3;
    }

    @Override // defpackage.mb3
    public final Object get() {
        yd1 yd1Var = this.a;
        b20 b20Var = this.b.get();
        x22 x22Var = this.c.get();
        nz1 nz1Var = this.d.get();
        if (yd1Var.o == null) {
            yd1Var.o = new v22(b20Var, x22Var, nz1Var);
        }
        v22 v22Var = yd1Var.o;
        Objects.requireNonNull(v22Var, "Cannot return null from a non-@Nullable @Provides method");
        return v22Var;
    }
}
