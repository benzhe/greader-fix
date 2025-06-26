package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class o05 implements Runnable {
    public final /* synthetic */ a05 e;
    public final /* synthetic */ h15 f;

    public o05(h15 h15Var, a05 a05Var) {
        this.f = h15Var;
        this.e = a05Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h15 h15Var = this.f;
        hw4 hw4Var = h15Var.d;
        if (hw4Var == null) {
            h15Var.a.a().f.a("Failed to send current screen to service");
            return;
        }
        try {
            a05 a05Var = this.e;
            if (a05Var == null) {
                hw4Var.y2(0L, null, null, h15Var.a.a.getPackageName());
            } else {
                hw4Var.y2(a05Var.c, a05Var.a, a05Var.b, h15Var.a.a.getPackageName());
            }
            this.f.s();
        } catch (RemoteException e) {
            this.f.a.a().f.b("Failed to send current screen to the service", e);
        }
    }
}
