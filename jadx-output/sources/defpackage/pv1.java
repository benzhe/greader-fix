package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
public final class pv1 extends mv1 {
    public String g;
    public int h = 1;

    public pv1(Context context) {
        this.f = new cm0(context, zzr.zzlj().zzaai(), this, this);
    }

    @Override // defpackage.mv1, i00.b
    public final void g0(ConnectionResult connectionResult) {
        is0.zzdz("Cannot connect to remote service, fallback to local instance.");
        this.a.b(new yv1(dm2.INTERNAL_ERROR));
    }

    @Override // i00.a
    public final void l0(Bundle bundle) {
        dm2 dm2Var = dm2.INTERNAL_ERROR;
        synchronized (this.b) {
            if (!this.d) {
                this.d = true;
                try {
                    int i = this.h;
                    if (i == 2) {
                        this.f.p().W3(this.e, new lv1(this));
                    } else if (i == 3) {
                        this.f.p().n5(this.g, new lv1(this));
                    } else {
                        this.a.b(new yv1(dm2Var));
                    }
                } catch (RemoteException | IllegalArgumentException unused) {
                    this.a.b(new yv1(dm2Var));
                } catch (Throwable th) {
                    or0 or0VarZzkz = zzr.zzkz();
                    xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(th, "RemoteUrlAndCacheKeyClientTask.onConnected");
                    this.a.b(new yv1(dm2Var));
                }
            }
        }
    }
}
