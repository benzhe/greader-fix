package defpackage;

import com.google.android.gms.measurement.internal.zzkr;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;

/* loaded from: classes.dex */
public final class j05 implements Runnable {
    public final /* synthetic */ zzp e;
    public final /* synthetic */ boolean f;
    public final /* synthetic */ zzkr g;
    public final /* synthetic */ h15 h;

    public j05(h15 h15Var, zzp zzpVar, boolean z, zzkr zzkrVar) {
        this.h = h15Var;
        this.e = zzpVar;
        this.f = z;
        this.g = zzkrVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        h15 h15Var = this.h;
        hw4 hw4Var = h15Var.d;
        if (hw4Var == null) {
            h15Var.a.a().f.a("Discarding data. Failed to set user property");
            return;
        }
        Objects.requireNonNull(this.e, "null reference");
        this.h.x(hw4Var, this.f ? null : this.g, this.e);
        this.h.s();
    }
}
