package defpackage;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;

/* loaded from: classes.dex */
public final class m05 implements Runnable {
    public final /* synthetic */ zzp e;
    public final /* synthetic */ bg4 f;
    public final /* synthetic */ h15 g;

    public m05(h15 h15Var, zzp zzpVar, bg4 bg4Var) {
        this.g = h15Var;
        this.e = zzpVar;
        this.f = bg4Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        rx4 rx4Var;
        String strZ0 = null;
        try {
            try {
                pc4.b();
                if (!this.g.a.g.s(null, ew4.E0) || this.g.a.q().s().e()) {
                    h15 h15Var = this.g;
                    hw4 hw4Var = h15Var.d;
                    if (hw4Var == null) {
                        h15Var.a.a().f.a("Failed to get app instance id");
                        rx4Var = this.g.a;
                    } else {
                        Objects.requireNonNull(this.e, "null reference");
                        strZ0 = hw4Var.Z0(this.e);
                        if (strZ0 != null) {
                            this.g.a.s().g.set(strZ0);
                            this.g.a.q().l.b(strZ0);
                        }
                        this.g.s();
                        rx4Var = this.g.a;
                    }
                } else {
                    this.g.a.a().k.a("Analytics storage consent denied; will not get app instance id");
                    this.g.a.s().g.set(null);
                    this.g.a.q().l.b(null);
                    rx4Var = this.g.a;
                }
            } catch (RemoteException e) {
                this.g.a.a().f.b("Failed to get app instance id", e);
                rx4Var = this.g.a;
            }
            rx4Var.t().P(this.f, strZ0);
        } catch (Throwable th) {
            this.g.a.t().P(this.f, null);
            throw th;
        }
    }
}
