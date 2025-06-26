package defpackage;

import com.google.android.gms.ads.internal.util.zzar;
import com.google.android.gms.ads.internal.util.zzd;

/* loaded from: classes.dex */
public final class se0 extends at0<pd0> {
    public zzar<pd0> d;
    public final Object c = new Object();
    public boolean e = false;
    public int f = 0;

    public se0(zzar<pd0> zzarVar) {
        this.d = zzarVar;
    }

    public final oe0 d() {
        oe0 oe0Var = new oe0(this);
        synchronized (this.c) {
            c(new re0(oe0Var), new ve0(oe0Var));
            bi.l(this.f >= 0);
            this.f++;
        }
        return oe0Var;
    }

    public final void e() {
        synchronized (this.c) {
            bi.l(this.f > 0);
            zzd.zzed("Releasing 1 reference for JS Engine");
            this.f--;
            g();
        }
    }

    public final void f() {
        synchronized (this.c) {
            bi.l(this.f >= 0);
            zzd.zzed("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.e = true;
            g();
        }
    }

    public final void g() {
        synchronized (this.c) {
            bi.l(this.f >= 0);
            if (this.e && this.f == 0) {
                zzd.zzed("No reference is left (including root). Cleaning up engine.");
                c(new ue0(this), new ys0());
            } else {
                zzd.zzed("There are still references to the engine. Not destroying.");
            }
        }
    }
}
