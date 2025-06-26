package defpackage;

import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public class al6 extends yk6<zk6, zk6> {
    @Override // defpackage.yk6
    public void a(zk6 zk6Var, int i, int i2) {
        zk6Var.c((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // defpackage.yk6
    public void b(zk6 zk6Var, int i, long j) {
        zk6Var.c((i << 3) | 1, Long.valueOf(j));
    }

    @Override // defpackage.yk6
    public void c(zk6 zk6Var, int i, zk6 zk6Var2) {
        zk6Var.c((i << 3) | 3, zk6Var2);
    }

    @Override // defpackage.yk6
    public void d(zk6 zk6Var, int i, qi6 qi6Var) {
        zk6Var.c((i << 3) | 2, qi6Var);
    }

    @Override // defpackage.yk6
    public void e(zk6 zk6Var, int i, long j) {
        zk6Var.c((i << 3) | 0, Long.valueOf(j));
    }

    @Override // defpackage.yk6
    public zk6 f(Object obj) {
        gj6 gj6Var = (gj6) obj;
        zk6 zk6Var = gj6Var.unknownFields;
        if (zk6Var != zk6.f) {
            return zk6Var;
        }
        zk6 zk6VarB = zk6.b();
        gj6Var.unknownFields = zk6VarB;
        return zk6VarB;
    }

    @Override // defpackage.yk6
    public zk6 g(Object obj) {
        return ((gj6) obj).unknownFields;
    }

    @Override // defpackage.yk6
    public int h(zk6 zk6Var) {
        return zk6Var.a();
    }

    @Override // defpackage.yk6
    public int i(zk6 zk6Var) {
        zk6 zk6Var2 = zk6Var;
        int i = zk6Var2.d;
        if (i != -1) {
            return i;
        }
        int iD = 0;
        for (int i2 = 0; i2 < zk6Var2.a; i2++) {
            int i3 = zk6Var2.b[i2] >>> 3;
            qi6 qi6Var = (qi6) zk6Var2.c[i2];
            iD += ti6.d(3, qi6Var) + ti6.z(2, i3) + (ti6.y(1) * 2);
        }
        zk6Var2.d = iD;
        return iD;
    }

    @Override // defpackage.yk6
    public void j(Object obj) {
        ((gj6) obj).unknownFields.e = false;
    }

    @Override // defpackage.yk6
    public zk6 k(zk6 zk6Var, zk6 zk6Var2) {
        zk6 zk6Var3 = zk6Var;
        zk6 zk6Var4 = zk6Var2;
        if (zk6Var4.equals(zk6.f)) {
            return zk6Var3;
        }
        int i = zk6Var3.a + zk6Var4.a;
        int[] iArrCopyOf = Arrays.copyOf(zk6Var3.b, i);
        System.arraycopy(zk6Var4.b, 0, iArrCopyOf, zk6Var3.a, zk6Var4.a);
        Object[] objArrCopyOf = Arrays.copyOf(zk6Var3.c, i);
        System.arraycopy(zk6Var4.c, 0, objArrCopyOf, zk6Var3.a, zk6Var4.a);
        return new zk6(i, iArrCopyOf, objArrCopyOf, true);
    }

    @Override // defpackage.yk6
    public zk6 m() {
        return zk6.b();
    }

    @Override // defpackage.yk6
    public void n(Object obj, zk6 zk6Var) {
        ((gj6) obj).unknownFields = zk6Var;
    }

    @Override // defpackage.yk6
    public void o(Object obj, zk6 zk6Var) {
        ((gj6) obj).unknownFields = zk6Var;
    }

    @Override // defpackage.yk6
    public boolean p(ok6 ok6Var) {
        return false;
    }

    @Override // defpackage.yk6
    public zk6 q(zk6 zk6Var) {
        zk6 zk6Var2 = zk6Var;
        zk6Var2.e = false;
        return zk6Var2;
    }

    @Override // defpackage.yk6
    public void r(zk6 zk6Var, hl6 hl6Var) throws IOException {
        zk6 zk6Var2 = zk6Var;
        Objects.requireNonNull(zk6Var2);
        Objects.requireNonNull(hl6Var);
        for (int i = 0; i < zk6Var2.a; i++) {
            ((ui6) hl6Var).e(zk6Var2.b[i] >>> 3, zk6Var2.c[i]);
        }
    }

    @Override // defpackage.yk6
    public void s(zk6 zk6Var, hl6 hl6Var) throws IOException {
        zk6Var.e(hl6Var);
    }
}
