package defpackage;

import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzp;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ux4 implements Runnable {
    public final /* synthetic */ zzaa e;
    public final /* synthetic */ ky4 f;

    public ux4(ky4 ky4Var, zzaa zzaaVar) {
        this.f = ky4Var;
        this.e = zzaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        this.f.e.l();
        if (this.e.g.n() == null) {
            j25 j25Var = this.f.e;
            zzaa zzaaVar = this.e;
            Objects.requireNonNull(j25Var);
            zzp zzpVarG = j25Var.G(zzaaVar.e);
            if (zzpVarG != null) {
                j25Var.t(zzaaVar, zzpVarG);
                return;
            }
            return;
        }
        j25 j25Var2 = this.f.e;
        zzaa zzaaVar2 = this.e;
        Objects.requireNonNull(j25Var2);
        zzp zzpVarG2 = j25Var2.G(zzaaVar2.e);
        if (zzpVarG2 != null) {
            j25Var2.s(zzaaVar2, zzpVarG2);
        }
    }
}
