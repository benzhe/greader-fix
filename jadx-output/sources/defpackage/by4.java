package defpackage;

import com.google.android.gms.measurement.internal.zzp;
import java.io.IOException;

/* loaded from: classes.dex */
public final class by4 implements Runnable {
    public final /* synthetic */ zzp e;
    public final /* synthetic */ ky4 f;

    public by4(ky4 ky4Var, zzp zzpVar) {
        this.f = ky4Var;
        this.e = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        this.f.e.l();
        j25 j25Var = this.f.e;
        zzp zzpVar = this.e;
        j25Var.j.m().d();
        j25Var.S();
        bi.g(zzpVar.e);
        j25Var.u(zzpVar);
    }
}
