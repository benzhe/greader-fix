package defpackage;

import com.google.android.gms.ads.internal.util.zzf;

/* loaded from: classes.dex */
public final class tp0 {
    public final zzf a;
    public final cq0 b;

    public tp0(zzf zzfVar, cq0 cq0Var) {
        this.a = zzfVar;
        this.b = cq0Var;
    }

    public final void a(int i) {
        if (((Boolean) os3.j.f.a(y40.i0)).booleanValue()) {
            return;
        }
        if (((Boolean) os3.j.f.a(y40.j0)).booleanValue()) {
            this.a.zzdk(i);
        } else {
            this.a.zzdk(-1);
        }
        b();
    }

    public final void b() {
        if (((Boolean) os3.j.f.a(y40.j0)).booleanValue()) {
            synchronized (this.b.l) {
            }
        }
    }
}
