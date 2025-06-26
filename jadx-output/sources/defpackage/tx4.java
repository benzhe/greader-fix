package defpackage;

import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzp;
import java.io.IOException;

/* loaded from: classes.dex */
public final class tx4 implements Runnable {
    public final /* synthetic */ zzaa e;
    public final /* synthetic */ zzp f;
    public final /* synthetic */ ky4 g;

    public tx4(ky4 ky4Var, zzaa zzaaVar, zzp zzpVar) {
        this.g = ky4Var;
        this.e = zzaaVar;
        this.f = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        this.g.e.l();
        if (this.e.g.n() == null) {
            this.g.e.t(this.e, this.f);
        } else {
            this.g.e.s(this.e, this.f);
        }
    }
}
