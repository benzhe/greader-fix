package defpackage;

import com.google.android.gms.internal.ads.zzht;
import java.io.EOFException;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class hj3 {
    public final ik3 a;
    public final int b;
    public final fj3 c;
    public final ej3 d;
    public final al3 e;
    public final AtomicInteger f;
    public gj3 g;
    public gj3 h;
    public zzht i;
    public long j;
    public int k;
    public ij3 l;

    public hj3(ik3 ik3Var) {
        this.a = ik3Var;
        int i = ik3Var.b;
        this.b = i;
        this.c = new fj3();
        this.d = new ej3();
        this.e = new al3(32);
        this.f = new AtomicInteger();
        this.k = i;
        gj3 gj3Var = new gj3(0L, i);
        this.g = gj3Var;
        this.h = gj3Var;
    }

    public final void a() {
        if (this.f.getAndSet(2) == 0) {
            k();
        }
    }

    public final int b(gg3 gg3Var, int i) throws InterruptedException, IOException {
        if (!m()) {
            eg3 eg3Var = (eg3) gg3Var;
            int iMin = Math.min(eg3Var.f, i);
            eg3Var.e(iMin);
            if (iMin == 0) {
                byte[] bArr = eg3.g;
                iMin = eg3Var.a(bArr, 0, Math.min(i, bArr.length), 0, true);
            }
            eg3Var.f(iMin);
            if (iMin != -1) {
                return iMin;
            }
            throw new EOFException();
        }
        try {
            int iF = f(i);
            byte[] bArr2 = this.h.d.a;
            int iA = 0;
            int i2 = this.k + 0;
            eg3 eg3Var2 = (eg3) gg3Var;
            int i3 = eg3Var2.f;
            if (i3 != 0) {
                int iMin2 = Math.min(i3, iF);
                System.arraycopy(eg3Var2.d, 0, bArr2, i2, iMin2);
                eg3Var2.e(iMin2);
                iA = iMin2;
            }
            if (iA == 0) {
                iA = eg3Var2.a(bArr2, i2, iF, 0, true);
            }
            eg3Var2.f(iA);
            if (iA == -1) {
                throw new EOFException();
            }
            this.k += iA;
            this.j += iA;
            return iA;
        } finally {
            n();
        }
    }

    public final void c(long j, int i, int i2, int i3, qg3 qg3Var) {
        if (!m()) {
            fj3 fj3Var = this.c;
            synchronized (fj3Var) {
                fj3Var.n = Math.max(fj3Var.n, j);
            }
        } else {
            try {
                this.c.a(j, i, (this.j - i2) - i3, i2, qg3Var);
            } finally {
                n();
            }
        }
    }

    public final void d(long j, byte[] bArr, int i) {
        i(j);
        int i2 = 0;
        while (i2 < i) {
            int i3 = (int) (j - this.g.a);
            int iMin = Math.min(i - i2, this.b - i3);
            dk3 dk3Var = this.g.d;
            System.arraycopy(dk3Var.a, i3 + 0, bArr, i2, iMin);
            j += iMin;
            i2 += iMin;
            if (j == this.g.b) {
                this.a.a(dk3Var);
                this.g = this.g.a();
            }
        }
    }

    public final void e(al3 al3Var, int i) {
        if (!m()) {
            al3Var.h(al3Var.b + i);
            return;
        }
        while (i > 0) {
            int iF = f(i);
            al3Var.l(this.h.d.a, this.k + 0, iF);
            this.k += iF;
            this.j += iF;
            i -= iF;
        }
        n();
    }

    public final int f(int i) {
        dk3 dk3Var;
        if (this.k == this.b) {
            this.k = 0;
            gj3 gj3Var = this.h;
            if (gj3Var.c) {
                this.h = gj3Var.e;
            }
            gj3 gj3Var2 = this.h;
            ik3 ik3Var = this.a;
            synchronized (ik3Var) {
                ik3Var.e++;
                int i2 = ik3Var.f;
                if (i2 > 0) {
                    dk3[] dk3VarArr = ik3Var.g;
                    int i3 = i2 - 1;
                    ik3Var.f = i3;
                    dk3Var = dk3VarArr[i3];
                    dk3VarArr[i3] = null;
                } else {
                    dk3Var = new dk3(new byte[ik3Var.b]);
                }
            }
            gj3 gj3Var3 = new gj3(this.h.b, this.b);
            gj3Var2.d = dk3Var;
            gj3Var2.e = gj3Var3;
            gj3Var2.c = true;
        }
        return Math.min(i, this.b - this.k);
    }

    public final void g(zzht zzhtVar) {
        boolean z;
        if (zzhtVar == null) {
            zzhtVar = null;
        }
        fj3 fj3Var = this.c;
        synchronized (fj3Var) {
            z = true;
            if (zzhtVar == null) {
                fj3Var.p = true;
            } else {
                fj3Var.p = false;
                if (!el3.d(zzhtVar, fj3Var.q)) {
                    fj3Var.q = zzhtVar;
                }
            }
            z = false;
        }
        ij3 ij3Var = this.l;
        if (ij3Var == null || !z) {
            return;
        }
        mi3 mi3Var = (mi3) ij3Var;
        mi3Var.r.post(mi3Var.p);
    }

    public final boolean h(long j, boolean z) {
        long j2;
        fj3 fj3Var = this.c;
        synchronized (fj3Var) {
            if (fj3Var.b()) {
                long[] jArr = fj3Var.f;
                int i = fj3Var.k;
                if (j < jArr[i]) {
                    j2 = -1;
                } else {
                    if (j <= fj3Var.n || z) {
                        int i2 = -1;
                        int i3 = 0;
                        while (i != fj3Var.l && fj3Var.f[i] <= j) {
                            if ((fj3Var.e[i] & 1) != 0) {
                                i2 = i3;
                            }
                            i = (i + 1) % fj3Var.a;
                            i3++;
                        }
                        if (i2 != -1) {
                            int i4 = (fj3Var.k + i2) % fj3Var.a;
                            fj3Var.k = i4;
                            fj3Var.j += i2;
                            fj3Var.i -= i2;
                            j2 = fj3Var.c[i4];
                        }
                    }
                    j2 = -1;
                }
            } else {
                j2 = -1;
            }
        }
        if (j2 == -1) {
            return false;
        }
        i(j2);
        return true;
    }

    public final void i(long j) {
        while (true) {
            gj3 gj3Var = this.g;
            if (j < gj3Var.b) {
                return;
            }
            this.a.a(gj3Var.d);
            this.g = this.g.a();
        }
    }

    public final long j() {
        long jMax;
        fj3 fj3Var = this.c;
        synchronized (fj3Var) {
            jMax = Math.max(fj3Var.m, fj3Var.n);
        }
        return jMax;
    }

    public final void k() {
        fj3 fj3Var = this.c;
        fj3Var.j = 0;
        fj3Var.k = 0;
        fj3Var.l = 0;
        fj3Var.i = 0;
        fj3Var.o = true;
        gj3 gj3VarA = this.g;
        if (gj3VarA.c) {
            gj3 gj3Var = this.h;
            int i = (((int) (gj3Var.a - gj3VarA.a)) / this.b) + (gj3Var.c ? 1 : 0);
            dk3[] dk3VarArr = new dk3[i];
            for (int i2 = 0; i2 < i; i2++) {
                dk3VarArr[i2] = gj3VarA.d;
                gj3VarA = gj3VarA.a();
            }
            this.a.b(dk3VarArr);
        }
        gj3 gj3Var2 = new gj3(0L, this.b);
        this.g = gj3Var2;
        this.h = gj3Var2;
        this.j = 0L;
        this.k = this.b;
        this.a.d();
    }

    public final zzht l() {
        zzht zzhtVar;
        fj3 fj3Var = this.c;
        synchronized (fj3Var) {
            zzhtVar = fj3Var.p ? null : fj3Var.q;
        }
        return zzhtVar;
    }

    public final boolean m() {
        return this.f.compareAndSet(0, 1);
    }

    public final void n() {
        if (this.f.compareAndSet(1, 0)) {
            return;
        }
        k();
    }

    public final void o(boolean z) {
        int andSet = this.f.getAndSet(z ? 0 : 2);
        k();
        fj3 fj3Var = this.c;
        fj3Var.m = Long.MIN_VALUE;
        fj3Var.n = Long.MIN_VALUE;
        if (andSet == 2) {
            this.i = null;
        }
    }
}
