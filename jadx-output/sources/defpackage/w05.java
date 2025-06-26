package defpackage;

import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;

/* loaded from: classes.dex */
public final class w05 implements Runnable {
    public final /* synthetic */ zzp e;
    public final /* synthetic */ boolean f;
    public final /* synthetic */ zzas g;
    public final /* synthetic */ h15 h;

    public w05(h15 h15Var, zzp zzpVar, boolean z, zzas zzasVar, String str) {
        this.h = h15Var;
        this.e = zzpVar;
        this.f = z;
        this.g = zzasVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        h15 h15Var = this.h;
        hw4 hw4Var = h15Var.d;
        if (hw4Var == null) {
            h15Var.a.a().f.a("Discarding data. Failed to send event to service");
            return;
        }
        Objects.requireNonNull(this.e, "null reference");
        this.h.x(hw4Var, this.f ? null : this.g, this.e);
        this.h.s();
    }
}
