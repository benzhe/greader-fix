package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzavt;

/* loaded from: classes.dex */
public final class ln0 extends qd3 implements jn0 {
    public ln0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override // defpackage.jn0
    public final void A6(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(11, parcelL0);
    }

    @Override // defpackage.jn0
    public final void U6(zzavt zzavtVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzavtVar);
        g0(1, parcelL0);
    }

    @Override // defpackage.jn0
    public final void Y4(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(9, parcelL0);
    }

    @Override // defpackage.jn0
    public final Bundle getAdMetadata() throws RemoteException {
        Parcel parcelZ = Z(15, l0());
        Bundle bundle = (Bundle) rd3.a(parcelZ, Bundle.CREATOR);
        parcelZ.recycle();
        return bundle;
    }

    @Override // defpackage.jn0
    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel parcelZ = Z(12, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.jn0
    public final boolean isLoaded() throws RemoteException {
        Parcel parcelZ = Z(5, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.jn0
    public final void k4(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(10, parcelL0);
    }

    @Override // defpackage.jn0
    public final void setCustomData(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        g0(19, parcelL0);
    }

    @Override // defpackage.jn0
    public final void setImmersiveMode(boolean z) throws RemoteException {
        Parcel parcelL0 = l0();
        ClassLoader classLoader = rd3.a;
        parcelL0.writeInt(z ? 1 : 0);
        g0(34, parcelL0);
    }

    @Override // defpackage.jn0
    public final void setUserId(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        g0(13, parcelL0);
    }

    @Override // defpackage.jn0
    public final void show() throws RemoteException {
        g0(2, l0());
    }

    @Override // defpackage.jn0
    public final void zza(pn0 pn0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, pn0Var);
        g0(3, parcelL0);
    }

    @Override // defpackage.jn0
    public final ru3 zzkm() throws RemoteException {
        Parcel parcelZ = Z(21, l0());
        ru3 ru3VarW6 = t91.W6(parcelZ.readStrongBinder());
        parcelZ.recycle();
        return ru3VarW6;
    }

    @Override // defpackage.jn0
    public final void zza(lt3 lt3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, lt3Var);
        g0(14, parcelL0);
    }
}
