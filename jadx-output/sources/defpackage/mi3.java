package defpackage;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseArray;
import java.io.IOException;
import java.util.Objects;

/* JADX WARN: Unexpected interfaces in signature: [mi3<pi3>] */
/* loaded from: classes.dex */
public final class mi3 implements kg3, xi3, ij3 {
    public nj3 A;
    public long B;
    public boolean[] C;
    public boolean[] D;
    public boolean E;
    public long G;
    public int I;
    public boolean J;
    public boolean K;
    public final Uri e;
    public final ek3 f;
    public final int g;
    public final Handler h;
    public final ti3 i;
    public final yi3 j;
    public final ik3 k;
    public final long l;
    public final si3 n;
    public wi3 t;
    public mg3 u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;
    public int z;
    public final qk3 m = new qk3("Loader:ExtractorMediaPeriod");
    public final wk3 o = new wk3();
    public final Runnable p = new li3(this);
    public final Runnable q = new oi3(this);
    public final Handler r = new Handler();
    public long H = -9223372036854775807L;
    public final SparseArray<hj3> s = new SparseArray<>();
    public long F = -1;

    public mi3(Uri uri, ek3 ek3Var, ig3[] ig3VarArr, int i, Handler handler, ti3 ti3Var, yi3 yi3Var, ik3 ik3Var, int i2) {
        this.e = uri;
        this.f = ek3Var;
        this.g = i;
        this.h = handler;
        this.i = ti3Var;
        this.j = yi3Var;
        this.k = ik3Var;
        this.l = i2;
        this.n = new si3(ig3VarArr, this);
    }

    @Override // defpackage.xi3, defpackage.jj3
    public final long a() {
        if (this.z == 0) {
            return Long.MIN_VALUE;
        }
        return d();
    }

    @Override // defpackage.xi3, defpackage.jj3
    public final boolean b(long j) {
        if (this.J) {
            return false;
        }
        if (this.w && this.z == 0) {
            return false;
        }
        boolean zA = this.o.a();
        if (this.m.a()) {
            return zA;
        }
        e();
        return true;
    }

    @Override // defpackage.xi3
    public final long c() {
        if (!this.y) {
            return -9223372036854775807L;
        }
        this.y = false;
        return this.G;
    }

    @Override // defpackage.xi3
    public final long d() {
        long jR;
        if (this.J) {
            return Long.MIN_VALUE;
        }
        if (s()) {
            return this.H;
        }
        if (this.E) {
            jR = Long.MAX_VALUE;
            int size = this.s.size();
            for (int i = 0; i < size; i++) {
                if (this.D[i]) {
                    jR = Math.min(jR, this.s.valueAt(i).j());
                }
            }
        } else {
            jR = r();
        }
        return jR == Long.MIN_VALUE ? this.G : jR;
    }

    public final void e() {
        mg3 mg3Var;
        pi3 pi3Var = new pi3(this, this.e, this.f, this.n, this.o);
        if (this.w) {
            c50.D(s());
            long j = this.B;
            if (j != -9223372036854775807L && this.H >= j) {
                this.J = true;
                this.H = -9223372036854775807L;
                return;
            }
            long jD = this.u.d(this.H);
            long j2 = this.H;
            pi3Var.e.a = jD;
            pi3Var.h = j2;
            pi3Var.g = true;
            this.H = -9223372036854775807L;
        }
        this.I = q();
        int i = this.g;
        int i2 = i == -1 ? (this.w && this.F == -1 && ((mg3Var = this.u) == null || mg3Var.g() == -9223372036854775807L)) ? 6 : 3 : i;
        qk3 qk3Var = this.m;
        Objects.requireNonNull(qk3Var);
        Looper looperMyLooper = Looper.myLooper();
        c50.D(looperMyLooper != null);
        new rk3(qk3Var, looperMyLooper, pi3Var, this, i2, SystemClock.elapsedRealtime()).a(0L);
    }

    @Override // defpackage.xi3
    public final long f(yj3[] yj3VarArr, boolean[] zArr, ri3[] ri3VarArr, boolean[] zArr2, long j) {
        c50.D(this.w);
        for (int i = 0; i < yj3VarArr.length; i++) {
            if (ri3VarArr[i] != null && (yj3VarArr[i] == null || !zArr[i])) {
                int i2 = ri3VarArr[i].a;
                c50.D(this.C[i2]);
                this.z--;
                this.C[i2] = false;
                this.s.valueAt(i2).a();
                ri3VarArr[i] = null;
            }
        }
        boolean z = false;
        for (int i3 = 0; i3 < yj3VarArr.length; i3++) {
            if (ri3VarArr[i3] == null && yj3VarArr[i3] != null) {
                yj3 yj3Var = yj3VarArr[i3];
                c50.D(yj3Var.length() == 1);
                c50.D(yj3Var.a(0) == 0);
                int iA = this.A.a(yj3Var.b());
                c50.D(!this.C[iA]);
                this.z++;
                this.C[iA] = true;
                ri3VarArr[i3] = new ri3(this, iA);
                zArr2[i3] = true;
                z = true;
            }
        }
        if (!this.x) {
            int size = this.s.size();
            for (int i4 = 0; i4 < size; i4++) {
                if (!this.C[i4]) {
                    this.s.valueAt(i4).a();
                }
            }
        }
        if (this.z == 0) {
            this.y = false;
            if (this.m.a()) {
                this.m.b.b(false);
            }
        } else if (!this.x ? j != 0 : z) {
            j = i(j);
            for (int i5 = 0; i5 < ri3VarArr.length; i5++) {
                if (ri3VarArr[i5] != null) {
                    zArr2[i5] = true;
                }
            }
        }
        this.x = true;
        return j;
    }

    @Override // defpackage.xi3
    public final void g(long j) {
    }

    @Override // defpackage.xi3
    public final nj3 h() {
        return this.A;
    }

    @Override // defpackage.xi3
    public final long i(long j) {
        if (!this.u.b()) {
            j = 0;
        }
        this.G = j;
        int size = this.s.size();
        boolean zH = !s();
        for (int i = 0; zH && i < size; i++) {
            if (this.C[i]) {
                zH = this.s.valueAt(i).h(j, false);
            }
        }
        if (!zH) {
            this.H = j;
            this.J = false;
            if (this.m.a()) {
                this.m.b.b(false);
            } else {
                for (int i2 = 0; i2 < size; i2++) {
                    this.s.valueAt(i2).o(this.C[i2]);
                }
            }
        }
        this.y = false;
        return j;
    }

    public final void j(mg3 mg3Var) {
        this.u = mg3Var;
        this.r.post(this.p);
    }

    @Override // defpackage.xi3
    public final void k(wi3 wi3Var, long j) {
        this.t = wi3Var;
        this.o.a();
        e();
    }

    @Override // defpackage.xi3
    public final void l() throws IOException {
        this.m.b();
    }

    public final void m(pi3 pi3Var) {
        if (this.F == -1) {
            this.F = pi3Var.i;
        }
    }

    public final void n(pi3 pi3Var, boolean z) {
        m(pi3Var);
        if (z || this.z <= 0) {
            return;
        }
        int size = this.s.size();
        for (int i = 0; i < size; i++) {
            this.s.valueAt(i).o(this.C[i]);
        }
        this.t.e(this);
    }

    public final hj3 o(int i, int i2) {
        hj3 hj3Var = this.s.get(i);
        if (hj3Var != null) {
            return hj3Var;
        }
        hj3 hj3Var2 = new hj3(this.k);
        hj3Var2.l = this;
        this.s.put(i, hj3Var2);
        return hj3Var2;
    }

    public final void p() {
        this.v = true;
        this.r.post(this.p);
    }

    public final int q() {
        int size = this.s.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            fj3 fj3Var = this.s.valueAt(i2).c;
            i += fj3Var.j + fj3Var.i;
        }
        return i;
    }

    public final long r() {
        int size = this.s.size();
        long jMax = Long.MIN_VALUE;
        for (int i = 0; i < size; i++) {
            jMax = Math.max(jMax, this.s.valueAt(i).j());
        }
        return jMax;
    }

    public final boolean s() {
        return this.H != -9223372036854775807L;
    }
}
