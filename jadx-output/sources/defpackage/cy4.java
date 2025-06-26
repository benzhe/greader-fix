package defpackage;

import com.google.android.gms.measurement.internal.zzp;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes.dex */
public final class cy4 implements Runnable {
    public final /* synthetic */ zzp e;
    public final /* synthetic */ ky4 f;

    public cy4(ky4 ky4Var, zzp zzpVar) {
        this.f = ky4Var;
        this.e = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        this.f.e.l();
        j25 j25Var = this.f.e;
        zzp zzpVar = this.e;
        Objects.requireNonNull(j25Var);
        pc4.b();
        if (j25Var.j.g.s(null, ew4.G0)) {
            j25Var.j.m().d();
            j25Var.S();
            bi.g(zzpVar.e);
            ds4 ds4VarB = ds4.b(zzpVar.z);
            ds4 ds4VarU = j25Var.U(zzpVar.e);
            j25Var.j.a().n.c("Setting consent, package, consent", zzpVar.e, ds4VarB);
            j25Var.T(zzpVar.e, ds4VarB);
            if (ds4VarB.f(ds4VarU)) {
                j25Var.n(zzpVar);
            }
        }
    }
}
