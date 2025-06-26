package defpackage;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;

/* loaded from: classes.dex */
public final class n05 implements Runnable {
    public final /* synthetic */ zzp e;
    public final /* synthetic */ h15 f;

    public n05(h15 h15Var, zzp zzpVar) {
        this.f = h15Var;
        this.e = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        h15 h15Var = this.f;
        hw4 hw4Var = h15Var.d;
        if (hw4Var == null) {
            h15Var.a.a().f.a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            Objects.requireNonNull(this.e, "null reference");
            hw4Var.G5(this.e);
            this.f.a.v().k();
            this.f.x(hw4Var, null, this.e);
            this.f.s();
        } catch (RemoteException e) {
            this.f.a.a().f.b("Failed to send app launch to the service", e);
        }
    }
}
