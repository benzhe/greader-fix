package defpackage;

import com.google.android.gms.measurement.internal.zzp;
import java.io.IOException;

/* loaded from: classes.dex */
public final class iy4 implements Runnable {
    public final /* synthetic */ zzp e;
    public final /* synthetic */ ky4 f;

    public iy4(ky4 ky4Var, zzp zzpVar) {
        this.f = ky4Var;
        this.e = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        this.f.e.l();
        this.f.e.r(this.e);
    }
}
