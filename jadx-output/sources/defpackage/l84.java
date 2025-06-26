package defpackage;

import java.io.IOException;
import java.util.logging.Logger;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public abstract class l84 extends y74 {
    public static final Logger b = Logger.getLogger(l84.class.getName());
    public static final boolean c = lb4.g;
    public m84 a;

    public l84() {
    }

    public /* synthetic */ l84(i84 i84Var) {
    }

    public static int a(g84 g84Var) {
        int iJ = g84Var.j();
        return x(iJ) + iJ;
    }

    public static int b(da4 da4Var, na4 na4Var) {
        t74 t74Var = (t74) da4Var;
        int iG = t74Var.g();
        if (iG == -1) {
            iG = na4Var.e(t74Var);
            t74Var.h(iG);
        }
        return x(iG) + iG;
    }

    public static int c(int i) {
        return (i >> 31) ^ (i + i);
    }

    public static long d(long j) {
        return (j >> 63) ^ (j + j);
    }

    @Deprecated
    public static int e(int i, da4 da4Var, na4 na4Var) {
        int iX = x(i << 3);
        int i2 = iX + iX;
        t74 t74Var = (t74) da4Var;
        int iG = t74Var.g();
        if (iG == -1) {
            iG = na4Var.e(t74Var);
            t74Var.h(iG);
        }
        return i2 + iG;
    }

    public static int v(int i) {
        return x(i << 3);
    }

    public static int w(int i) {
        if (i >= 0) {
            return x(i);
        }
        return 10;
    }

    public static int x(int i) {
        if ((i & Base64.SIGN) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int y(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            j >>>= 28;
            i = 6;
        } else {
            i = 2;
        }
        if (((-2097152) & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & (-16384)) != 0 ? i + 1 : i;
    }

    public static int z(String str) {
        int length;
        try {
            length = qb4.b(str);
        } catch (ob4 unused) {
            length = str.getBytes(j94.a).length;
        }
        return x(length) + length;
    }

    public abstract void f(int i, int i2) throws IOException;

    public abstract void g(int i, int i2) throws IOException;

    public abstract void h(int i, int i2) throws IOException;

    public abstract void i(int i, int i2) throws IOException;

    public abstract void j(int i, long j) throws IOException;

    public abstract void k(int i, long j) throws IOException;

    public abstract void l(int i, boolean z) throws IOException;

    public abstract void m(int i, String str) throws IOException;

    public abstract void n(int i, g84 g84Var) throws IOException;

    public abstract void o(byte b2) throws IOException;

    public abstract void p(int i) throws IOException;

    public abstract void q(int i) throws IOException;

    public abstract void r(int i) throws IOException;

    public abstract void s(long j) throws IOException;

    public abstract void t(long j) throws IOException;

    public abstract int u();
}
