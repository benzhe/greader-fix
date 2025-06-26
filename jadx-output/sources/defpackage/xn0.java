package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzavy;

/* loaded from: classes.dex */
public final class xn0 extends qd3 implements vn0 {
    public xn0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    @Override // defpackage.vn0
    public final void I0(x20 x20Var, zzavy zzavyVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.c(parcelL0, zzavyVar);
        g0(7, parcelL0);
    }

    @Override // defpackage.vn0
    public final void J0(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(1, parcelL0);
    }

    @Override // defpackage.vn0
    public final void K1(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(3, parcelL0);
    }

    @Override // defpackage.vn0
    public final void M5(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(4, parcelL0);
    }

    @Override // defpackage.vn0
    public final void S4(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(8, parcelL0);
    }

    @Override // defpackage.vn0
    public final void T2(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(11, parcelL0);
    }

    @Override // defpackage.vn0
    public final void U3(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(6, parcelL0);
    }

    @Override // defpackage.vn0
    public final void h2(x20 x20Var, int i) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        parcelL0.writeInt(i);
        g0(9, parcelL0);
    }

    @Override // defpackage.vn0
    public final void i1(x20 x20Var, int i) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        parcelL0.writeInt(i);
        g0(2, parcelL0);
    }

    @Override // defpackage.vn0
    public final void p2(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(10, parcelL0);
    }

    @Override // defpackage.vn0
    public final void u6(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(5, parcelL0);
    }

    @Override // defpackage.vn0
    public final void zzb(Bundle bundle) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, bundle);
        g0(12, parcelL0);
    }
}
