package defpackage;

import com.google.android.gms.measurement.internal.zzp;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class hy4 implements Callable<List<n25>> {
    public final /* synthetic */ zzp e;
    public final /* synthetic */ ky4 f;

    public hy4(ky4 ky4Var, zzp zzpVar) {
        this.f = ky4Var;
        this.e = zzpVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<n25> call() throws Exception {
        this.f.e.l();
        return this.f.e.L().E(this.e.e);
    }
}
