package defpackage;

import android.os.RemoteException;
import java.util.Objects;

/* loaded from: classes.dex */
public final class dh2 implements c72<e41> {
    public final /* synthetic */ zg2 a;

    public dh2(zg2 zg2Var) {
        this.a = zg2Var;
    }

    @Override // defpackage.c72
    public final void a() {
        synchronized (this.a) {
            this.a.m = null;
        }
    }

    @Override // defpackage.c72
    public final void onSuccess(e41 e41Var) {
        e41 e41Var2 = e41Var;
        synchronized (this.a) {
            e41 e41Var3 = this.a.m;
            if (e41Var3 != null) {
                e41Var3.a();
            }
            zg2 zg2Var = this.a;
            zg2Var.m = e41Var2;
            xw0 xw0Var = e41Var2.h;
            if (xw0Var != null) {
                xw0Var.S(zg2Var);
            }
            mg2 mg2Var = this.a.j;
            zg2 zg2Var2 = this.a;
            d41 d41Var = new d41(e41Var2, zg2Var2, zg2Var2.j);
            Objects.requireNonNull(mg2Var);
            while (true) {
                mg2 mg2Var2 = mg2Var.l;
                if (mg2Var2 == null) {
                    break;
                } else {
                    mg2Var = mg2Var2;
                }
            }
            yn3 yn3Var = mg2Var.f.get();
            if (yn3Var == null) {
                e41Var2.b();
            } else {
                try {
                    yn3Var.W1(d41Var);
                } catch (RemoteException e) {
                    is0.zze("#007 Could not call remote method.", e);
                }
                e41Var2.b();
            }
        }
    }
}
