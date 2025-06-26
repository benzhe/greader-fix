package defpackage;

import com.google.android.gms.measurement.internal.zzp;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class f25 implements Callable<String> {
    public final /* synthetic */ zzp e;
    public final /* synthetic */ j25 f;

    public f25(j25 j25Var, zzp zzpVar) {
        this.f = j25Var;
        this.e = zzpVar;
    }

    @Override // java.util.concurrent.Callable
    public final String call() throws Exception {
        pc4.b();
        if (!this.f.j.g.s(null, ew4.G0) || (this.f.U(this.e.e).e() && ds4.b(this.e.z).e())) {
            return this.f.u(this.e).z();
        }
        this.f.a().n.a("Analytics storage consent denied. Returning null app instance id");
        return null;
    }
}
