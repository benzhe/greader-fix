package defpackage;

import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;

/* loaded from: classes.dex */
public final class x05 implements Runnable {
    public final /* synthetic */ zzp e;
    public final /* synthetic */ boolean f;
    public final /* synthetic */ zzaa g;
    public final /* synthetic */ h15 h;

    public x05(h15 h15Var, zzp zzpVar, boolean z, zzaa zzaaVar, zzaa zzaaVar2) {
        this.h = h15Var;
        this.e = zzpVar;
        this.f = z;
        this.g = zzaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        h15 h15Var = this.h;
        hw4 hw4Var = h15Var.d;
        if (hw4Var == null) {
            h15Var.a.a().f.a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        Objects.requireNonNull(this.e, "null reference");
        this.h.x(hw4Var, this.f ? null : this.g, this.e);
        this.h.s();
    }
}
