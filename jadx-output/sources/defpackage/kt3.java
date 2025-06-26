package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import com.google.android.gms.internal.ads.zzwc;

/* loaded from: classes.dex */
public final class kt3 extends qd3 implements it3 {
    public kt3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // defpackage.it3
    public final void destroy() throws RemoteException {
        g0(2, l0());
    }

    @Override // defpackage.it3
    public final Bundle getAdMetadata() throws RemoteException {
        Parcel parcelZ = Z(37, l0());
        Bundle bundle = (Bundle) rd3.a(parcelZ, Bundle.CREATOR);
        parcelZ.recycle();
        return bundle;
    }

    @Override // defpackage.it3
    public final String getAdUnitId() throws RemoteException {
        Parcel parcelZ = Z(31, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.it3
    public final su3 getVideoController() throws RemoteException {
        su3 uu3Var;
        Parcel parcelZ = Z(26, l0());
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            uu3Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            uu3Var = iInterfaceQueryLocalInterface instanceof su3 ? (su3) iInterfaceQueryLocalInterface : new uu3(strongBinder);
        }
        parcelZ.recycle();
        return uu3Var;
    }

    @Override // defpackage.it3
    public final boolean isLoading() throws RemoteException {
        Parcel parcelZ = Z(23, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.it3
    public final boolean isReady() throws RemoteException {
        Parcel parcelZ = Z(3, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.it3
    public final void pause() throws RemoteException {
        g0(5, l0());
    }

    @Override // defpackage.it3
    public final void resume() throws RemoteException {
        g0(6, l0());
    }

    @Override // defpackage.it3
    public final void setImmersiveMode(boolean z) throws RemoteException {
        Parcel parcelL0 = l0();
        ClassLoader classLoader = rd3.a;
        parcelL0.writeInt(z ? 1 : 0);
        g0(34, parcelL0);
    }

    @Override // defpackage.it3
    public final void setManualImpressionsEnabled(boolean z) throws RemoteException {
        Parcel parcelL0 = l0();
        ClassLoader classLoader = rd3.a;
        parcelL0.writeInt(z ? 1 : 0);
        g0(22, parcelL0);
    }

    @Override // defpackage.it3
    public final void showInterstitial() throws RemoteException {
        g0(9, l0());
    }

    @Override // defpackage.it3
    public final boolean zza(zzvq zzvqVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvqVar);
        Parcel parcelZ = Z(4, parcelL0);
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.it3
    public final void zze(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(44, parcelL0);
    }

    @Override // defpackage.it3
    public final x20 zzki() throws RemoteException {
        return jo.L(Z(1, l0()));
    }

    @Override // defpackage.it3
    public final void zzkj() throws RemoteException {
        g0(11, l0());
    }

    @Override // defpackage.it3
    public final zzvt zzkk() throws RemoteException {
        Parcel parcelZ = Z(12, l0());
        zzvt zzvtVar = (zzvt) rd3.a(parcelZ, zzvt.CREATOR);
        parcelZ.recycle();
        return zzvtVar;
    }

    @Override // defpackage.it3
    public final String zzkl() throws RemoteException {
        Parcel parcelZ = Z(35, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.it3
    public final ru3 zzkm() throws RemoteException {
        ru3 tu3Var;
        Parcel parcelZ = Z(41, l0());
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            tu3Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            tu3Var = iInterfaceQueryLocalInterface instanceof ru3 ? (ru3) iInterfaceQueryLocalInterface : new tu3(strongBinder);
        }
        parcelZ.recycle();
        return tu3Var;
    }

    @Override // defpackage.it3
    public final pt3 zzkn() throws RemoteException {
        pt3 st3Var;
        Parcel parcelZ = Z(32, l0());
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            st3Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            st3Var = iInterfaceQueryLocalInterface instanceof pt3 ? (pt3) iInterfaceQueryLocalInterface : new st3(strongBinder);
        }
        parcelZ.recycle();
        return st3Var;
    }

    @Override // defpackage.it3
    public final us3 zzko() throws RemoteException {
        us3 ws3Var;
        Parcel parcelZ = Z(33, l0());
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            ws3Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            ws3Var = iInterfaceQueryLocalInterface instanceof us3 ? (us3) iInterfaceQueryLocalInterface : new ws3(strongBinder);
        }
        parcelZ.recycle();
        return ws3Var;
    }

    @Override // defpackage.it3
    public final void zza(us3 us3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, us3Var);
        g0(7, parcelL0);
    }

    @Override // defpackage.it3
    public final void zza(pt3 pt3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, pt3Var);
        g0(8, parcelL0);
    }

    @Override // defpackage.it3
    public final void zza(zzvt zzvtVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvtVar);
        g0(13, parcelL0);
    }

    @Override // defpackage.it3
    public final void zza(t50 t50Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, t50Var);
        g0(19, parcelL0);
    }

    @Override // defpackage.it3
    public final void zza(ps3 ps3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, ps3Var);
        g0(20, parcelL0);
    }

    @Override // defpackage.it3
    public final void zza(pn0 pn0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, pn0Var);
        g0(24, parcelL0);
    }

    @Override // defpackage.it3
    public final void zza(zzaaz zzaazVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzaazVar);
        g0(29, parcelL0);
    }

    @Override // defpackage.it3
    public final void zza(lt3 lt3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, lt3Var);
        g0(36, parcelL0);
    }

    @Override // defpackage.it3
    public final void zza(zzwc zzwcVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzwcVar);
        g0(39, parcelL0);
    }

    @Override // defpackage.it3
    public final void zza(yn3 yn3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, yn3Var);
        g0(40, parcelL0);
    }

    @Override // defpackage.it3
    public final void zza(mu3 mu3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, mu3Var);
        g0(42, parcelL0);
    }

    @Override // defpackage.it3
    public final void zza(zzvq zzvqVar, vs3 vs3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvqVar);
        rd3.b(parcelL0, vs3Var);
        g0(43, parcelL0);
    }

    @Override // defpackage.it3
    public final void zza(yt3 yt3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, yt3Var);
        g0(45, parcelL0);
    }
}
