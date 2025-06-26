package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzp;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public final class z05 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ zzp g;
    public final /* synthetic */ bg4 h;
    public final /* synthetic */ h15 i;

    public z05(h15 h15Var, String str, String str2, zzp zzpVar, bg4 bg4Var) {
        this.i = h15Var;
        this.e = str;
        this.f = str2;
        this.g = zzpVar;
        this.h = bg4Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        rx4 rx4Var;
        ArrayList<Bundle> arrayList = new ArrayList<>();
        try {
            try {
                h15 h15Var = this.i;
                hw4 hw4Var = h15Var.d;
                if (hw4Var == null) {
                    h15Var.a.a().f.c("Failed to get conditional properties; not connected to service", this.e, this.f);
                    rx4Var = this.i.a;
                } else {
                    Objects.requireNonNull(this.g, "null reference");
                    arrayList = p25.W(hw4Var.q0(this.e, this.f, this.g));
                    this.i.s();
                    rx4Var = this.i.a;
                }
            } catch (RemoteException e) {
                this.i.a.a().f.d("Failed to get conditional properties; remote exception", this.e, this.f, e);
                rx4Var = this.i.a;
            }
            rx4Var.t().V(this.h, arrayList);
        } catch (Throwable th) {
            this.i.a.t().V(this.h, arrayList);
            throw th;
        }
    }
}
