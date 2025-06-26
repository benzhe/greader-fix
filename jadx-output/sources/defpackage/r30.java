package defpackage;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvq;

/* loaded from: classes.dex */
public final class r30 extends zs3 {
    public final /* synthetic */ p30 e;

    public r30(p30 p30Var, o30 o30Var) {
        this.e = p30Var;
    }

    @Override // defpackage.at3
    public final void D6(zzvq zzvqVar, int i) throws RemoteException {
        is0.zzex("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zr0.b.post(new q30(this));
    }

    @Override // defpackage.at3
    public final void M0(zzvq zzvqVar) throws RemoteException {
        D6(zzvqVar, 1);
    }

    @Override // defpackage.at3
    public final String getMediationAdapterClassName() throws RemoteException {
        return null;
    }

    @Override // defpackage.at3
    public final boolean isLoading() throws RemoteException {
        return false;
    }

    @Override // defpackage.at3
    public final String zzkl() throws RemoteException {
        return null;
    }
}
