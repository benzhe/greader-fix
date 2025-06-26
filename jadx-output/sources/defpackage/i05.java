package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzkr;
import com.google.android.gms.measurement.internal.zzp;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class i05 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ zzp g;
    public final /* synthetic */ boolean h;
    public final /* synthetic */ bg4 i;
    public final /* synthetic */ h15 j;

    public i05(h15 h15Var, String str, String str2, zzp zzpVar, boolean z, bg4 bg4Var) {
        this.j = h15Var;
        this.e = str;
        this.f = str2;
        this.g = zzpVar;
        this.h = z;
        this.i = bg4Var;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        Bundle bundle;
        RemoteException e;
        Bundle bundle2 = new Bundle();
        try {
            h15 h15Var = this.j;
            hw4 hw4Var = h15Var.d;
            if (hw4Var == null) {
                h15Var.a.a().f.c("Failed to get user properties; not connected to service", this.e, this.f);
                this.j.a.t().U(this.i, bundle2);
                return;
            }
            Objects.requireNonNull(this.g, "null reference");
            List<zzkr> listQ2 = hw4Var.Q2(this.e, this.f, this.h, this.g);
            bundle = new Bundle();
            if (listQ2 != null) {
                for (zzkr zzkrVar : listQ2) {
                    String str = zzkrVar.i;
                    if (str != null) {
                        bundle.putString(zzkrVar.f, str);
                    } else {
                        Long l = zzkrVar.h;
                        if (l != null) {
                            bundle.putLong(zzkrVar.f, l.longValue());
                        } else {
                            Double d = zzkrVar.k;
                            if (d != null) {
                                bundle.putDouble(zzkrVar.f, d.doubleValue());
                            }
                        }
                    }
                }
            }
            try {
                try {
                    this.j.s();
                    this.j.a.t().U(this.i, bundle);
                } catch (RemoteException e2) {
                    e = e2;
                    this.j.a.a().f.c("Failed to get user properties; remote exception", this.e, e);
                    this.j.a.t().U(this.i, bundle);
                }
            } catch (Throwable th) {
                th = th;
                bundle2 = bundle;
                this.j.a.t().U(this.i, bundle2);
                throw th;
            }
        } catch (RemoteException e3) {
            bundle = bundle2;
            e = e3;
        } catch (Throwable th2) {
            th = th2;
            this.j.a.t().U(this.i, bundle2);
            throw th;
        }
    }
}
