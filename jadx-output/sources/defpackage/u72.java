package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class u72 implements rv2<i82> {
    public final /* synthetic */ yq0 a;
    public final /* synthetic */ l72 b;

    public u72(l72 l72Var, yq0 yq0Var) {
        this.b = l72Var;
        this.a = yq0Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        try {
            yq0 yq0Var = this.a;
            String strValueOf = String.valueOf(th.getMessage());
            yq0Var.onError(strValueOf.length() != 0 ? "Internal error. ".concat(strValueOf) : new String("Internal error. "));
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // defpackage.rv2
    public final void onSuccess(i82 i82Var) {
        i82 i82Var2 = i82Var;
        try {
            if (((Boolean) os3.j.f.a(y40.t4)).booleanValue()) {
                if (this.b.i.g >= ((Integer) os3.j.f.a(y40.v4)).intValue()) {
                    if (i82Var2 == null) {
                        this.a.V(null, null, null);
                        return;
                    } else {
                        this.a.V(i82Var2.a, i82Var2.b, i82Var2.c);
                        return;
                    }
                }
            }
            if (i82Var2 == null) {
                this.a.l4(null, null);
            } else {
                this.a.l4(i82Var2.a, i82Var2.b);
            }
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }
}
