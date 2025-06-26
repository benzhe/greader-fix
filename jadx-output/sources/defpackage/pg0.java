package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzavy;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class pg0 extends qd3 implements ng0 {
    public pg0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override // defpackage.ng0
    public final void E5() throws RemoteException {
        g0(13, l0());
    }

    @Override // defpackage.ng0
    public final void Q4() throws RemoteException {
        g0(18, l0());
    }

    @Override // defpackage.ng0
    public final void S(bo0 bo0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, bo0Var);
        g0(16, parcelL0);
    }

    @Override // defpackage.ng0
    public final void U(zzvh zzvhVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvhVar);
        g0(23, parcelL0);
    }

    @Override // defpackage.ng0
    public final void X() throws RemoteException {
        g0(11, l0());
    }

    @Override // defpackage.ng0
    public final void Y(q80 q80Var, String str) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, q80Var);
        parcelL0.writeString(str);
        g0(10, parcelL0);
    }

    @Override // defpackage.ng0
    public final void Y3(zzvh zzvhVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvhVar);
        g0(24, parcelL0);
    }

    @Override // defpackage.ng0
    public final void d5(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        g0(12, parcelL0);
    }

    @Override // defpackage.ng0
    public final void i2(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        g0(21, parcelL0);
    }

    @Override // defpackage.ng0
    public final void onAdClicked() throws RemoteException {
        g0(1, l0());
    }

    @Override // defpackage.ng0
    public final void onAdClosed() throws RemoteException {
        g0(2, l0());
    }

    @Override // defpackage.ng0
    public final void onAdFailedToLoad(int i) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeInt(i);
        g0(3, parcelL0);
    }

    @Override // defpackage.ng0
    public final void onAdImpression() throws RemoteException {
        g0(8, l0());
    }

    @Override // defpackage.ng0
    public final void onAdLeftApplication() throws RemoteException {
        g0(4, l0());
    }

    @Override // defpackage.ng0
    public final void onAdLoaded() throws RemoteException {
        g0(6, l0());
    }

    @Override // defpackage.ng0
    public final void onAdOpened() throws RemoteException {
        g0(5, l0());
    }

    @Override // defpackage.ng0
    public final void onAppEvent(String str, String str2) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        g0(9, parcelL0);
    }

    @Override // defpackage.ng0
    public final void onVideoPause() throws RemoteException {
        g0(15, l0());
    }

    @Override // defpackage.ng0
    public final void onVideoPlay() throws RemoteException {
        g0(20, l0());
    }

    @Override // defpackage.ng0
    public final void t2(int i, String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeInt(i);
        parcelL0.writeString(str);
        g0(22, parcelL0);
    }

    @Override // defpackage.ng0
    public final void v1(zzavy zzavyVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzavyVar);
        g0(14, parcelL0);
    }

    @Override // defpackage.ng0
    public final void y0(int i) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeInt(i);
        g0(17, parcelL0);
    }

    @Override // defpackage.ng0
    public final void z2(sg0 sg0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, sg0Var);
        g0(7, parcelL0);
    }

    @Override // defpackage.ng0
    public final void zzb(Bundle bundle) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, bundle);
        g0(19, parcelL0);
    }
}
