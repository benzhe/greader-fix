package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;

/* loaded from: classes.dex */
public final class p05 implements Runnable {
    public final /* synthetic */ zzp e;
    public final /* synthetic */ Bundle f;
    public final /* synthetic */ h15 g;

    public p05(h15 h15Var, zzp zzpVar, Bundle bundle) {
        this.g = h15Var;
        this.e = zzpVar;
        this.f = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h15 h15Var = this.g;
        hw4 hw4Var = h15Var.d;
        if (hw4Var == null) {
            h15Var.a.a().f.a("Failed to send default event parameters to service");
            return;
        }
        try {
            Objects.requireNonNull(this.e, "null reference");
            hw4Var.z3(this.f, this.e);
        } catch (RemoteException e) {
            this.g.a.a().f.b("Failed to send default event parameters to service", e);
        }
    }
}
