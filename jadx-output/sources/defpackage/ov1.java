package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzr;

/* loaded from: classes.dex */
public final class ov1 extends mv1 {
    public ov1(Context context) {
        this.f = new cm0(context, zzr.zzlj().zzaai(), this, this);
    }

    @Override // i00.a
    public final void l0(Bundle bundle) {
        dm2 dm2Var = dm2.INTERNAL_ERROR;
        synchronized (this.b) {
            if (!this.d) {
                this.d = true;
                try {
                    try {
                        this.f.p().e3(this.e, new lv1(this));
                    } catch (Throwable th) {
                        or0 or0VarZzkz = zzr.zzkz();
                        xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(th, "RemoteSignalsClientTask.onConnected");
                        this.a.b(new yv1(dm2Var));
                    }
                } catch (RemoteException | IllegalArgumentException unused) {
                    this.a.b(new yv1(dm2Var));
                }
            }
        }
    }
}
