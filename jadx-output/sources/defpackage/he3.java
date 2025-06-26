package defpackage;

import android.util.Log;
import java.util.Objects;
import okhttp3.internal.http2.Http2Connection;

/* loaded from: classes.dex */
public final class he3 {
    public final xi3 a;
    public final Object b;
    public final int c;
    public final ri3[] d;
    public final boolean[] e;
    public final long f;
    public int g;
    public long h;
    public boolean i;
    public boolean j;
    public boolean k;
    public he3 l;
    public bk3 m;
    public final oe3[] n;
    public final xd3[] o;
    public final zj3 p;
    public final dv0 q;
    public final zi3 r;
    public bk3 s;

    public he3(oe3[] oe3VarArr, xd3[] xd3VarArr, long j, zj3 zj3Var, dv0 dv0Var, zi3 zi3Var, Object obj, int i, int i2, boolean z, long j2) {
        this.n = oe3VarArr;
        this.o = xd3VarArr;
        this.f = j;
        this.p = zj3Var;
        this.q = dv0Var;
        this.r = zi3Var;
        Objects.requireNonNull(obj);
        this.b = obj;
        this.c = i;
        this.g = i2;
        this.i = z;
        this.h = j2;
        this.d = new ri3[oe3VarArr.length];
        this.e = new boolean[oe3VarArr.length];
        this.a = zi3Var.b(i2, dv0Var.a);
    }

    public final void a() {
        try {
            this.r.c(this.a);
        } catch (RuntimeException e) {
            Log.e("ExoPlayerImplInternal", "Period release failed.", e);
        }
    }

    public final long b(long j, boolean z, boolean[] zArr) {
        int i;
        ak3 ak3Var = this.m.b;
        int i2 = 0;
        while (true) {
            boolean z2 = true;
            if (i2 >= ak3Var.a) {
                break;
            }
            boolean[] zArr2 = this.e;
            if (z || !this.m.a(this.s, i2)) {
                z2 = false;
            }
            zArr2[i2] = z2;
            i2++;
        }
        long jF = this.a.f((yj3[]) ak3Var.b.clone(), this.e, this.d, zArr, j);
        this.s = this.m;
        this.k = false;
        int i3 = 0;
        while (true) {
            ri3[] ri3VarArr = this.d;
            if (i3 >= ri3VarArr.length) {
                break;
            }
            if (ri3VarArr[i3] != null) {
                c50.D(ak3Var.b[i3] != null);
                this.k = true;
            } else {
                c50.D(ak3Var.b[i3] == null);
            }
            i3++;
        }
        dv0 dv0Var = this.q;
        oe3[] oe3VarArr = this.n;
        nj3 nj3Var = this.m.a;
        dv0Var.f = 0;
        for (int i4 = 0; i4 < oe3VarArr.length; i4++) {
            if (ak3Var.b[i4] != null) {
                int i5 = dv0Var.f;
                int iV = oe3VarArr[i4].v();
                int i6 = el3.a;
                if (iV == 0) {
                    i = Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
                } else if (iV == 1) {
                    i = 3538944;
                } else if (iV != 2) {
                    i = 131072;
                    if (iV != 3 && iV != 4) {
                        throw new IllegalStateException();
                    }
                } else {
                    i = 13107200;
                }
                dv0Var.f = i5 + i;
            }
        }
        dv0Var.a.c(dv0Var.f);
        return jF;
    }

    public final long c(long j) {
        return b(j, false, new boolean[this.n.length]);
    }

    public final void d(int i, boolean z) {
        this.g = i;
        this.i = z;
    }

    public final long e() {
        return this.f - this.h;
    }

    public final boolean f() {
        if (this.j) {
            return !this.k || this.a.d() == Long.MIN_VALUE;
        }
        return false;
    }

    public final boolean g() throws yd3 {
        boolean z;
        bk3 bk3VarA = this.p.a(this.o, this.a.h());
        bk3 bk3Var = this.s;
        if (bk3Var == null) {
            z = false;
            break;
        }
        for (int i = 0; i < bk3VarA.b.a; i++) {
            if (!bk3VarA.a(bk3Var, i)) {
                z = false;
                break;
            }
        }
        z = true;
        if (z) {
            return false;
        }
        this.m = bk3VarA;
        return true;
    }
}
