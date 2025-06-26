package defpackage;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzas;

/* loaded from: classes.dex */
public final class r05 implements Runnable {
    public final /* synthetic */ zzas e;
    public final /* synthetic */ String f;
    public final /* synthetic */ bg4 g;
    public final /* synthetic */ h15 h;

    public r05(h15 h15Var, zzas zzasVar, String str, bg4 bg4Var) {
        this.h = h15Var;
        this.e = zzasVar;
        this.f = str;
        this.g = bg4Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        rx4 rx4Var;
        byte[] bArrI3 = null;
        try {
            try {
                h15 h15Var = this.h;
                hw4 hw4Var = h15Var.d;
                if (hw4Var == null) {
                    h15Var.a.a().f.a("Discarding data. Failed to send event to service to bundle");
                    rx4Var = this.h.a;
                } else {
                    bArrI3 = hw4Var.I3(this.e, this.f);
                    this.h.s();
                    rx4Var = this.h.a;
                }
            } catch (RemoteException e) {
                this.h.a.a().f.b("Failed to send event to the service to bundle", e);
                rx4Var = this.h.a;
            }
            rx4Var.t().S(this.g, bArrI3);
        } catch (Throwable th) {
            this.h.a.t().S(this.g, bArrI3);
            throw th;
        }
    }
}
