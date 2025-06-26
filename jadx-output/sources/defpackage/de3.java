package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes.dex */
public final class de3 {
    public final oe3[] a;
    public final zj3 b;
    public final ak3 c;
    public final Handler d;
    public final ee3 e;
    public final CopyOnWriteArraySet<ae3> f;
    public final te3 g;
    public final ue3 h;
    public boolean i;
    public boolean j;
    public int k;
    public int l;
    public int m;
    public boolean n;
    public se3 o;
    public Object p;
    public nj3 q;
    public ak3 r;
    public pe3 s;
    public ge3 t;
    public int u;
    public long v;

    public de3(oe3[] oe3VarArr, zj3 zj3Var, dv0 dv0Var) {
        String str = el3.e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 26);
        sb.append("Init ExoPlayerLib/2.4.2 [");
        sb.append(str);
        sb.append("]");
        Log.i("ExoPlayerImpl", sb.toString());
        c50.D(oe3VarArr.length > 0);
        this.a = oe3VarArr;
        Objects.requireNonNull(zj3Var);
        this.b = zj3Var;
        this.j = false;
        this.k = 1;
        this.f = new CopyOnWriteArraySet<>();
        ak3 ak3Var = new ak3(new yj3[oe3VarArr.length]);
        this.c = ak3Var;
        this.o = se3.a;
        this.g = new te3();
        this.h = new ue3();
        this.q = nj3.d;
        this.r = ak3Var;
        this.s = pe3.d;
        fe3 fe3Var = new fe3(this, Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        this.d = fe3Var;
        ge3 ge3Var = new ge3(0, 0L);
        this.t = ge3Var;
        this.e = new ee3(oe3VarArr, zj3Var, dv0Var, this.j, fe3Var, ge3Var, this);
    }

    public final long a() {
        if (this.o.a() || this.l > 0) {
            return this.v;
        }
        this.o.e(this.t.a, this.h, false);
        Objects.requireNonNull(this.h);
        return zd3.a(this.t.d) + zd3.a(0L);
    }

    public final long b() {
        if (this.o.a()) {
            return -9223372036854775807L;
        }
        return zd3.a(this.o.c(f(), this.g).a);
    }

    public final void c(be3... be3VarArr) {
        ee3 ee3Var = this.e;
        if (ee3Var.v) {
            Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        } else {
            ee3Var.B++;
            ee3Var.j.obtainMessage(11, be3VarArr).sendToTarget();
        }
    }

    public final void d(be3... be3VarArr) {
        ee3 ee3Var = this.e;
        synchronized (ee3Var) {
            if (ee3Var.v) {
                Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
                return;
            }
            int i = ee3Var.B;
            ee3Var.B = i + 1;
            ee3Var.j.obtainMessage(11, be3VarArr).sendToTarget();
            while (ee3Var.C <= i) {
                try {
                    ee3Var.wait();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    public final long e() {
        if (this.o.a() || this.l > 0) {
            return this.v;
        }
        this.o.e(this.t.a, this.h, false);
        Objects.requireNonNull(this.h);
        return zd3.a(this.t.c) + zd3.a(0L);
    }

    public final int f() {
        if (this.o.a() || this.l > 0) {
            return this.u;
        }
        this.o.e(this.t.a, this.h, false);
        return 0;
    }

    public final void g(boolean z) {
        if (this.j != z) {
            this.j = z;
            this.e.j.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
            Iterator<ae3> it = this.f.iterator();
            while (it.hasNext()) {
                it.next().c(z, this.k);
            }
        }
    }
}
