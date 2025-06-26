package defpackage;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;

/* loaded from: classes.dex */
public final class k05 implements Runnable {
    public final /* synthetic */ zzp e;
    public final /* synthetic */ h15 f;

    public k05(h15 h15Var, zzp zzpVar) {
        this.f = h15Var;
        this.e = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h15 h15Var = this.f;
        hw4 hw4Var = h15Var.d;
        if (hw4Var == null) {
            h15Var.a.a().f.a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            Objects.requireNonNull(this.e, "null reference");
            hw4Var.h3(this.e);
        } catch (RemoteException e) {
            this.f.a.a().f.b("Failed to reset data on the service: remote exception", e);
        }
        this.f.s();
    }
}
