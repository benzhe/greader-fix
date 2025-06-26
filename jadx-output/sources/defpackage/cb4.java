package defpackage;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class cb4 extends ab4<bb4, bb4> {
    @Override // defpackage.ab4
    public final /* bridge */ /* synthetic */ void a(bb4 bb4Var, int i, long j) {
        bb4Var.c(i << 3, Long.valueOf(j));
    }

    @Override // defpackage.ab4
    public final /* bridge */ /* synthetic */ bb4 b() {
        return bb4.a();
    }

    @Override // defpackage.ab4
    public final /* bridge */ /* synthetic */ void c(Object obj, bb4 bb4Var) {
        ((c94) obj).zzc = bb4Var;
    }

    @Override // defpackage.ab4
    public final /* bridge */ /* synthetic */ bb4 d(Object obj) {
        return ((c94) obj).zzc;
    }

    @Override // defpackage.ab4
    public final void e(Object obj) {
        ((c94) obj).zzc.e = false;
    }

    @Override // defpackage.ab4
    public final bb4 f(bb4 bb4Var, bb4 bb4Var2) {
        bb4 bb4Var3 = bb4Var2;
        if (bb4Var3.equals(bb4.f)) {
            return bb4Var;
        }
        bb4 bb4Var4 = bb4Var;
        int i = bb4Var4.a + bb4Var3.a;
        int[] iArrCopyOf = Arrays.copyOf(bb4Var4.b, i);
        System.arraycopy(bb4Var3.b, 0, iArrCopyOf, bb4Var4.a, bb4Var3.a);
        Object[] objArrCopyOf = Arrays.copyOf(bb4Var4.c, i);
        System.arraycopy(bb4Var3.c, 0, objArrCopyOf, bb4Var4.a, bb4Var3.a);
        return new bb4(i, iArrCopyOf, objArrCopyOf, true);
    }

    @Override // defpackage.ab4
    public final int g(bb4 bb4Var) {
        bb4 bb4Var2 = bb4Var;
        int i = bb4Var2.d;
        if (i != -1) {
            return i;
        }
        int iX = 0;
        for (int i2 = 0; i2 < bb4Var2.a; i2++) {
            int i3 = bb4Var2.b[i2];
            g84 g84Var = (g84) bb4Var2.c[i2];
            int iV = l84.v(1);
            int iV2 = l84.v(2);
            int iX2 = l84.x(i3 >>> 3);
            int iV3 = l84.v(3);
            int iJ = g84Var.j();
            int i4 = iV2 + iX2;
            iX += l84.x(iJ) + iJ + iV3 + i4 + iV + iV;
        }
        bb4Var2.d = iX;
        return iX;
    }

    @Override // defpackage.ab4
    public final /* bridge */ /* synthetic */ int h(bb4 bb4Var) {
        return bb4Var.b();
    }

    @Override // defpackage.ab4
    public final /* bridge */ /* synthetic */ void i(bb4 bb4Var, m84 m84Var) throws IOException {
        bb4Var.d(m84Var);
    }
}
