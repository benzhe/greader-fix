package defpackage;

import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class n93 extends l93<o93, o93> {
    @Override // defpackage.l93
    public final /* synthetic */ void a(o93 o93Var, int i, long j) {
        o93Var.e(i << 3, Long.valueOf(j));
    }

    @Override // defpackage.l93
    public final /* synthetic */ void b(o93 o93Var, int i, k53 k53Var) {
        o93Var.e((i << 3) | 2, k53Var);
    }

    @Override // defpackage.l93
    public final /* synthetic */ void c(o93 o93Var, int i, o93 o93Var2) {
        o93Var.e((i << 3) | 3, o93Var2);
    }

    @Override // defpackage.l93
    public final /* synthetic */ void d(o93 o93Var, ga3 ga3Var) throws IOException {
        o93Var.b(ga3Var);
    }

    @Override // defpackage.l93
    public final boolean e(z53 z53Var) {
        return false;
    }

    @Override // defpackage.l93
    public final void g(Object obj) {
        ((s63) obj).zzitn.e = false;
    }

    @Override // defpackage.l93
    public final o93 h(o93 o93Var) {
        o93 o93Var2 = o93Var;
        o93Var2.e = false;
        return o93Var2;
    }

    @Override // defpackage.l93
    public final /* synthetic */ int i(o93 o93Var) {
        return o93Var.c();
    }

    @Override // defpackage.l93
    public final /* synthetic */ o93 j(Object obj) {
        return ((s63) obj).zzitn;
    }

    @Override // defpackage.l93
    public final o93 k(Object obj) {
        s63 s63Var = (s63) obj;
        o93 o93Var = s63Var.zzitn;
        if (o93Var != o93.f) {
            return o93Var;
        }
        o93 o93VarD = o93.d();
        s63Var.zzitn = o93VarD;
        return o93VarD;
    }

    @Override // defpackage.l93
    public final /* synthetic */ void l(o93 o93Var, int i, long j) {
        o93Var.e((i << 3) | 1, Long.valueOf(j));
    }

    @Override // defpackage.l93
    public final int m(o93 o93Var) {
        o93 o93Var2 = o93Var;
        int i = o93Var2.d;
        if (i != -1) {
            return i;
        }
        int iU = 0;
        for (int i2 = 0; i2 < o93Var2.a; i2++) {
            int i3 = o93Var2.b[i2] >>> 3;
            k53 k53Var = (k53) o93Var2.c[i2];
            iU += b63.u(3, k53Var) + b63.k(2, i3) + (b63.I(8) << 1);
        }
        o93Var2.d = iU;
        return iU;
    }

    @Override // defpackage.l93
    public final /* synthetic */ o93 n() {
        return o93.d();
    }

    @Override // defpackage.l93
    public final /* synthetic */ void o(o93 o93Var, int i, int i2) {
        o93Var.e((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // defpackage.l93
    public final void p(o93 o93Var, ga3 ga3Var) throws IOException {
        o93 o93Var2 = o93Var;
        Objects.requireNonNull(o93Var2);
        Objects.requireNonNull(ga3Var);
        for (int i = 0; i < o93Var2.a; i++) {
            ((d63) ga3Var).f(o93Var2.b[i] >>> 3, o93Var2.c[i]);
        }
    }

    @Override // defpackage.l93
    public final void q(Object obj, o93 o93Var) {
        ((s63) obj).zzitn = o93Var;
    }

    @Override // defpackage.l93
    public final void r(Object obj, o93 o93Var) {
        ((s63) obj).zzitn = o93Var;
    }

    @Override // defpackage.l93
    public final o93 s(o93 o93Var, o93 o93Var2) {
        o93 o93Var3 = o93Var;
        o93 o93Var4 = o93Var2;
        if (o93Var4.equals(o93.f)) {
            return o93Var3;
        }
        int i = o93Var3.a + o93Var4.a;
        int[] iArrCopyOf = Arrays.copyOf(o93Var3.b, i);
        System.arraycopy(o93Var4.b, 0, iArrCopyOf, o93Var3.a, o93Var4.a);
        Object[] objArrCopyOf = Arrays.copyOf(o93Var3.c, i);
        System.arraycopy(o93Var4.c, 0, objArrCopyOf, o93Var3.a, o93Var4.a);
        return new o93(i, iArrCopyOf, objArrCopyOf, true);
    }
}
