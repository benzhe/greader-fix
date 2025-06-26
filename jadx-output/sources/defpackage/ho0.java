package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaww;
import com.google.android.gms.internal.ads.zzvq;

/* loaded from: classes.dex */
public final class ho0 extends qd3 implements fo0 {
    public ho0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // defpackage.fo0
    public final void E6(zzaww zzawwVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzawwVar);
        g0(7, parcelL0);
    }

    @Override // defpackage.fo0
    public final void I5(zzvq zzvqVar, no0 no0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvqVar);
        rd3.b(parcelL0, no0Var);
        g0(14, parcelL0);
    }

    @Override // defpackage.fo0
    public final void J5(go0 go0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, go0Var);
        g0(2, parcelL0);
    }

    @Override // defpackage.fo0
    public final void S6(x20 x20Var, boolean z) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        parcelL0.writeInt(z ? 1 : 0);
        g0(10, parcelL0);
    }

    @Override // defpackage.fo0
    public final void T4(zzvq zzvqVar, no0 no0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvqVar);
        rd3.b(parcelL0, no0Var);
        g0(1, parcelL0);
    }

    @Override // defpackage.fo0
    public final bo0 c2() throws RemoteException {
        bo0 do0Var;
        Parcel parcelZ = Z(11, l0());
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            do0Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            do0Var = iInterfaceQueryLocalInterface instanceof bo0 ? (bo0) iInterfaceQueryLocalInterface : new do0(strongBinder);
        }
        parcelZ.recycle();
        return do0Var;
    }

    @Override // defpackage.fo0
    public final Bundle getAdMetadata() throws RemoteException {
        Parcel parcelZ = Z(9, l0());
        Bundle bundle = (Bundle) rd3.a(parcelZ, Bundle.CREATOR);
        parcelZ.recycle();
        return bundle;
    }

    @Override // defpackage.fo0
    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel parcelZ = Z(4, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.fo0
    public final boolean isLoaded() throws RemoteException {
        Parcel parcelZ = Z(3, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.fo0
    public final void r4(lu3 lu3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, lu3Var);
        g0(8, parcelL0);
    }

    @Override // defpackage.fo0
    public final void setImmersiveMode(boolean z) throws RemoteException {
        Parcel parcelL0 = l0();
        ClassLoader classLoader = rd3.a;
        parcelL0.writeInt(z ? 1 : 0);
        g0(15, parcelL0);
    }

    @Override // defpackage.fo0
    public final void zza(mu3 mu3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, mu3Var);
        g0(13, parcelL0);
    }

    @Override // defpackage.fo0
    public final void zze(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(5, parcelL0);
    }

    @Override // defpackage.fo0
    public final ru3 zzkm() throws RemoteException {
        Parcel parcelZ = Z(12, l0());
        ru3 ru3VarW6 = t91.W6(parcelZ.readStrongBinder());
        parcelZ.recycle();
        return ru3VarW6;
    }
}
