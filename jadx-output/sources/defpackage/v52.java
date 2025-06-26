package defpackage;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvq;

/* loaded from: classes.dex */
public final class v52 extends zs3 {
    public final w62 e;

    public v52(Context context, sy0 sy0Var, nl2 nl2Var, dk1 dk1Var, us3 us3Var) {
        y62 y62Var = new y62(dk1Var, sy0Var.d());
        y62Var.b.e.set(us3Var);
        this.e = new w62(new e72(sy0Var, context, y62Var, nl2Var), nl2Var.d);
    }

    @Override // defpackage.at3
    public final synchronized void D6(zzvq zzvqVar, int i) throws RemoteException {
        this.e.a(zzvqVar, i);
    }

    @Override // defpackage.at3
    public final void M0(zzvq zzvqVar) throws RemoteException {
        this.e.a(zzvqVar, 1);
    }

    @Override // defpackage.at3
    public final synchronized String getMediationAdapterClassName() {
        String mediationAdapterClassName;
        w62 w62Var = this.e;
        synchronized (w62Var) {
            try {
                ru3 ru3Var = w62Var.c;
                mediationAdapterClassName = ru3Var != null ? ru3Var.getMediationAdapterClassName() : null;
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
        return mediationAdapterClassName;
    }

    @Override // defpackage.at3
    public final synchronized boolean isLoading() throws RemoteException {
        boolean zIsLoading;
        w62 w62Var = this.e;
        synchronized (w62Var) {
            zIsLoading = w62Var.a.isLoading();
        }
        return zIsLoading;
    }

    @Override // defpackage.at3
    public final synchronized String zzkl() {
        String mediationAdapterClassName;
        w62 w62Var = this.e;
        synchronized (w62Var) {
            try {
                ru3 ru3Var = w62Var.c;
                mediationAdapterClassName = ru3Var != null ? ru3Var.getMediationAdapterClassName() : null;
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
        return mediationAdapterClassName;
    }
}
