package defpackage;

import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class en4 extends cn4<bn4, bn4> {
    @Override // defpackage.cn4
    public final /* synthetic */ bn4 a(Object obj) {
        return ((pk4) obj).zzb;
    }

    @Override // defpackage.cn4
    public final /* synthetic */ void b(bn4 bn4Var, vn4 vn4Var) throws IOException {
        bn4Var.b(vn4Var);
    }

    @Override // defpackage.cn4
    public final /* synthetic */ void c(Object obj, bn4 bn4Var) {
        ((pk4) obj).zzb = bn4Var;
    }

    @Override // defpackage.cn4
    public final bn4 d(bn4 bn4Var, bn4 bn4Var2) {
        bn4 bn4Var3 = bn4Var;
        bn4 bn4Var4 = bn4Var2;
        if (bn4Var4.equals(bn4.e)) {
            return bn4Var3;
        }
        int i = bn4Var3.a + bn4Var4.a;
        int[] iArrCopyOf = Arrays.copyOf(bn4Var3.b, i);
        System.arraycopy(bn4Var4.b, 0, iArrCopyOf, bn4Var3.a, bn4Var4.a);
        Object[] objArrCopyOf = Arrays.copyOf(bn4Var3.c, i);
        System.arraycopy(bn4Var4.c, 0, objArrCopyOf, bn4Var3.a, bn4Var4.a);
        return new bn4(i, iArrCopyOf, objArrCopyOf, true);
    }

    @Override // defpackage.cn4
    public final void e(Object obj) {
        Objects.requireNonNull(((pk4) obj).zzb);
    }

    @Override // defpackage.cn4
    public final void f(bn4 bn4Var, vn4 vn4Var) throws IOException {
        bn4 bn4Var2 = bn4Var;
        Objects.requireNonNull(bn4Var2);
        Objects.requireNonNull(vn4Var);
        for (int i = 0; i < bn4Var2.a; i++) {
            ((ek4) vn4Var).c(bn4Var2.b[i] >>> 3, bn4Var2.c[i]);
        }
    }

    @Override // defpackage.cn4
    public final int g(bn4 bn4Var) {
        bn4 bn4Var2 = bn4Var;
        int i = bn4Var2.d;
        if (i != -1) {
            return i;
        }
        int iV = 0;
        for (int i2 = 0; i2 < bn4Var2.a; i2++) {
            int i3 = bn4Var2.b[i2] >>> 3;
            vj4 vj4Var = (vj4) bn4Var2.c[i2];
            iV += ck4.v(3, vj4Var) + ck4.L(2, i3) + (ck4.K(8) << 1);
        }
        bn4Var2.d = iV;
        return iV;
    }

    @Override // defpackage.cn4
    public final /* synthetic */ int h(bn4 bn4Var) {
        return bn4Var.c();
    }
}
