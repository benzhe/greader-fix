package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public abstract class u53 {
    public int a;
    public int b = 100;
    public int c = Integer.MAX_VALUE;
    public z53 d;

    public u53(x53 x53Var) {
    }

    public static int A(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static u53 d(byte[] bArr, int i, int i2, boolean z) {
        w53 w53Var = new w53(bArr, i, i2, z, null);
        try {
            w53Var.y(i2);
            return w53Var;
        } catch (e73 e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static long v(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public abstract double a() throws IOException;

    public abstract float b() throws IOException;

    public abstract String c() throws IOException;

    public abstract int e() throws IOException;

    public abstract long f() throws IOException;

    public abstract long g() throws IOException;

    public abstract int h() throws IOException;

    public abstract long i() throws IOException;

    public abstract int j() throws IOException;

    public abstract boolean k() throws IOException;

    public abstract String l() throws IOException;

    public abstract k53 m() throws IOException;

    public abstract int n() throws IOException;

    public abstract int o() throws IOException;

    public abstract int p() throws IOException;

    public abstract long q() throws IOException;

    public abstract int r() throws IOException;

    public abstract long s() throws IOException;

    public abstract boolean t() throws IOException;

    public abstract int u();

    public abstract void w(int i) throws e73;

    public abstract boolean x(int i) throws IOException;

    public abstract int y(int i) throws e73;

    public abstract void z(int i);
}
