package defpackage;

import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class d04 extends b04<c04, c04> {
    @Override // defpackage.b04
    public final /* synthetic */ void a(c04 c04Var, int i, long j) {
        c04Var.b(i << 3, Long.valueOf(j));
    }

    @Override // defpackage.b04
    public final /* synthetic */ void b(c04 c04Var, v04 v04Var) throws IOException {
        c04Var.d(v04Var);
    }

    @Override // defpackage.b04
    public final void c(Object obj) {
        ((sx3) obj).zzjp.e = false;
    }

    @Override // defpackage.b04
    public final void d(c04 c04Var, v04 v04Var) throws IOException {
        c04 c04Var2 = c04Var;
        Objects.requireNonNull(c04Var2);
        Objects.requireNonNull(v04Var);
        for (int i = 0; i < c04Var2.a; i++) {
            ((bx3) v04Var).c(c04Var2.b[i] >>> 3, c04Var2.c[i]);
        }
    }

    @Override // defpackage.b04
    public final /* synthetic */ c04 e() {
        return c04.e();
    }

    @Override // defpackage.b04
    public final void f(Object obj, c04 c04Var) {
        ((sx3) obj).zzjp = c04Var;
    }

    @Override // defpackage.b04
    public final c04 g(c04 c04Var, c04 c04Var2) {
        c04 c04Var3 = c04Var;
        c04 c04Var4 = c04Var2;
        if (c04Var4.equals(c04.f)) {
            return c04Var3;
        }
        int i = c04Var3.a + c04Var4.a;
        int[] iArrCopyOf = Arrays.copyOf(c04Var3.b, i);
        System.arraycopy(c04Var4.b, 0, iArrCopyOf, c04Var3.a, c04Var4.a);
        Object[] objArrCopyOf = Arrays.copyOf(c04Var3.c, i);
        System.arraycopy(c04Var4.c, 0, objArrCopyOf, c04Var3.a, c04Var4.a);
        return new c04(i, iArrCopyOf, objArrCopyOf, true);
    }

    @Override // defpackage.b04
    public final /* synthetic */ int h(c04 c04Var) {
        return c04Var.a();
    }

    @Override // defpackage.b04
    public final /* synthetic */ c04 i(Object obj) {
        return ((sx3) obj).zzjp;
    }

    @Override // defpackage.b04
    public final int j(c04 c04Var) {
        c04 c04Var2 = c04Var;
        int i = c04Var2.d;
        if (i != -1) {
            return i;
        }
        int iX = 0;
        for (int i2 = 0; i2 < c04Var2.a; i2++) {
            int i3 = c04Var2.b[i2] >>> 3;
            sw3 sw3Var = (sw3) c04Var2.c[i2];
            iX += zw3.x(3, sw3Var) + zw3.N(2, i3) + (zw3.X(1) << 1);
        }
        c04Var2.d = iX;
        return iX;
    }
}
