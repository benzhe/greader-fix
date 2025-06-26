package defpackage;

import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class xr0 implements an3 {
    public final zzf b;
    public final tr0 d;
    public final Object a = new Object();
    public final HashSet<nr0> e = new HashSet<>();
    public final HashSet<vr0> f = new HashSet<>();
    public boolean g = false;
    public final wr0 c = new wr0();

    public xr0(String str, zzf zzfVar) {
        this.d = new tr0(str, zzfVar);
        this.b = zzfVar;
    }

    @Override // defpackage.an3
    public final void a(boolean z) {
        long jA = zzr.zzlc().a();
        if (!z) {
            this.b.zzfa(jA);
            this.b.zzdj(this.d.d);
            return;
        }
        if (jA - this.b.zzzh() > ((Long) os3.j.f.a(y40.C0)).longValue()) {
            this.d.d = -1;
        } else {
            this.d.d = this.b.zzzi();
        }
        this.g = true;
    }

    public final void b(nr0 nr0Var) {
        synchronized (this.a) {
            this.e.add(nr0Var);
        }
    }
}
