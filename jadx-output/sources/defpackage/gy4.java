package defpackage;

import com.google.android.gms.measurement.internal.zzkr;
import com.google.android.gms.measurement.internal.zzp;
import java.io.IOException;

/* loaded from: classes.dex */
public final class gy4 implements Runnable {
    public final /* synthetic */ zzkr e;
    public final /* synthetic */ zzp f;
    public final /* synthetic */ ky4 g;

    public gy4(ky4 ky4Var, zzkr zzkrVar, zzp zzpVar) {
        this.g = ky4Var;
        this.e = zzkrVar;
        this.f = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        this.g.e.l();
        if (this.e.n() == null) {
            this.g.e.q(this.e, this.f);
        } else {
            this.g.e.p(this.e, this.f);
        }
    }
}
