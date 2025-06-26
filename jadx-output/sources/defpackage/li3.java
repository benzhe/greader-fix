package defpackage;

import com.google.android.gms.internal.ads.zzht;

/* loaded from: classes.dex */
public final class li3 implements Runnable {
    public final /* synthetic */ mi3 e;

    public li3(mi3 mi3Var) {
        this.e = mi3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        mi3 mi3Var = this.e;
        if (mi3Var.K || mi3Var.w || mi3Var.u == null || !mi3Var.v) {
            return;
        }
        int size = mi3Var.s.size();
        for (int i = 0; i < size; i++) {
            if (mi3Var.s.valueAt(i).l() == null) {
                return;
            }
        }
        wk3 wk3Var = mi3Var.o;
        synchronized (wk3Var) {
            wk3Var.a = false;
        }
        kj3[] kj3VarArr = new kj3[size];
        mi3Var.D = new boolean[size];
        mi3Var.C = new boolean[size];
        mi3Var.B = mi3Var.u.g();
        int i2 = 0;
        while (true) {
            boolean z = true;
            if (i2 >= size) {
                mi3Var.A = new nj3(kj3VarArr);
                mi3Var.w = true;
                mi3Var.j.f(new lj3(mi3Var.B, mi3Var.u.b()), null);
                mi3Var.t.j(mi3Var);
                return;
            }
            zzht zzhtVarL = mi3Var.s.valueAt(i2).l();
            kj3VarArr[i2] = new kj3(zzhtVarL);
            String str = zzhtVarL.j;
            if (!c50.m3(str) && !c50.l3(str)) {
                z = false;
            }
            mi3Var.D[i2] = z;
            mi3Var.E = z | mi3Var.E;
            i2++;
        }
    }
}
