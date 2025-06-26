package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvt;

/* loaded from: classes.dex */
public final class tt3 extends qd3 implements qt3 {
    public tt3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // defpackage.qt3
    public final it3 zza(x20 x20Var, zzvt zzvtVar, String str, hg0 hg0Var, int i) throws RemoteException {
        it3 kt3Var;
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.c(parcelL0, zzvtVar);
        parcelL0.writeString(str);
        rd3.b(parcelL0, hg0Var);
        parcelL0.writeInt(i);
        Parcel parcelZ = Z(1, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            kt3Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            kt3Var = iInterfaceQueryLocalInterface instanceof it3 ? (it3) iInterfaceQueryLocalInterface : new kt3(strongBinder);
        }
        parcelZ.recycle();
        return kt3Var;
    }

    @Override // defpackage.qt3
    public final it3 zzb(x20 x20Var, zzvt zzvtVar, String str, hg0 hg0Var, int i) throws RemoteException {
        it3 kt3Var;
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.c(parcelL0, zzvtVar);
        parcelL0.writeString(str);
        rd3.b(parcelL0, hg0Var);
        parcelL0.writeInt(i);
        Parcel parcelZ = Z(2, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            kt3Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            kt3Var = iInterfaceQueryLocalInterface instanceof it3 ? (it3) iInterfaceQueryLocalInterface : new kt3(strongBinder);
        }
        parcelZ.recycle();
        return kt3Var;
    }

    @Override // defpackage.qt3
    public final it3 zzc(x20 x20Var, zzvt zzvtVar, String str, hg0 hg0Var, int i) throws RemoteException {
        it3 kt3Var;
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.c(parcelL0, zzvtVar);
        parcelL0.writeString(str);
        rd3.b(parcelL0, hg0Var);
        parcelL0.writeInt(i);
        Parcel parcelZ = Z(13, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            kt3Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            kt3Var = iInterfaceQueryLocalInterface instanceof it3 ? (it3) iInterfaceQueryLocalInterface : new kt3(strongBinder);
        }
        parcelZ.recycle();
        return kt3Var;
    }

    @Override // defpackage.qt3
    public final bt3 zza(x20 x20Var, String str, hg0 hg0Var, int i) throws RemoteException {
        bt3 dt3Var;
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        parcelL0.writeString(str);
        rd3.b(parcelL0, hg0Var);
        parcelL0.writeInt(i);
        Parcel parcelZ = Z(3, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            dt3Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            if (iInterfaceQueryLocalInterface instanceof bt3) {
                dt3Var = (bt3) iInterfaceQueryLocalInterface;
            } else {
                dt3Var = new dt3(strongBinder);
            }
        }
        parcelZ.recycle();
        return dt3Var;
    }

    @Override // defpackage.qt3
    public final xk0 zzb(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        Parcel parcelZ = Z(8, parcelL0);
        xk0 xk0VarZzaj = wk0.zzaj(parcelZ.readStrongBinder());
        parcelZ.recycle();
        return xk0VarZzaj;
    }

    @Override // defpackage.qt3
    public final jk0 zzc(x20 x20Var, hg0 hg0Var, int i) throws RemoteException {
        jk0 lk0Var;
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, hg0Var);
        parcelL0.writeInt(i);
        Parcel parcelZ = Z(15, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        int i2 = mk0.e;
        if (strongBinder == null) {
            lk0Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            if (iInterfaceQueryLocalInterface instanceof jk0) {
                lk0Var = (jk0) iInterfaceQueryLocalInterface;
            } else {
                lk0Var = new lk0(strongBinder);
            }
        }
        parcelZ.recycle();
        return lk0Var;
    }

    @Override // defpackage.qt3
    public final fo0 zzb(x20 x20Var, String str, hg0 hg0Var, int i) throws RemoteException {
        fo0 ho0Var;
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        parcelL0.writeString(str);
        rd3.b(parcelL0, hg0Var);
        parcelL0.writeInt(i);
        Parcel parcelZ = Z(12, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        int i2 = eo0.e;
        if (strongBinder == null) {
            ho0Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
            if (iInterfaceQueryLocalInterface instanceof fo0) {
                ho0Var = (fo0) iInterfaceQueryLocalInterface;
            } else {
                ho0Var = new ho0(strongBinder);
            }
        }
        parcelZ.recycle();
        return ho0Var;
    }

    @Override // defpackage.qt3
    public final x70 zza(x20 x20Var, x20 x20Var2) throws RemoteException {
        x70 z70Var;
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, x20Var2);
        Parcel parcelZ = Z(5, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        int i = a80.e;
        if (strongBinder == null) {
            z70Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
            if (iInterfaceQueryLocalInterface instanceof x70) {
                z70Var = (x70) iInterfaceQueryLocalInterface;
            } else {
                z70Var = new z70(strongBinder);
            }
        }
        parcelZ.recycle();
        return z70Var;
    }

    @Override // defpackage.qt3
    public final zq0 zzb(x20 x20Var, hg0 hg0Var, int i) throws RemoteException {
        zq0 br0Var;
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, hg0Var);
        parcelL0.writeInt(i);
        Parcel parcelZ = Z(14, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        int i2 = cr0.e;
        if (strongBinder == null) {
            br0Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            if (iInterfaceQueryLocalInterface instanceof zq0) {
                br0Var = (zq0) iInterfaceQueryLocalInterface;
            } else {
                br0Var = new br0(strongBinder);
            }
        }
        parcelZ.recycle();
        return br0Var;
    }

    @Override // defpackage.qt3
    public final jn0 zza(x20 x20Var, hg0 hg0Var, int i) throws RemoteException {
        jn0 ln0Var;
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, hg0Var);
        parcelL0.writeInt(i);
        Parcel parcelZ = Z(6, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        int i2 = mn0.e;
        if (strongBinder == null) {
            ln0Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
            if (iInterfaceQueryLocalInterface instanceof jn0) {
                ln0Var = (jn0) iInterfaceQueryLocalInterface;
            } else {
                ln0Var = new ln0(strongBinder);
            }
        }
        parcelZ.recycle();
        return ln0Var;
    }

    @Override // defpackage.qt3
    public final zt3 zza(x20 x20Var, int i) throws RemoteException {
        zt3 bu3Var;
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        parcelL0.writeInt(i);
        Parcel parcelZ = Z(9, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            bu3Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            if (iInterfaceQueryLocalInterface instanceof zt3) {
                bu3Var = (zt3) iInterfaceQueryLocalInterface;
            } else {
                bu3Var = new bu3(strongBinder);
            }
        }
        parcelZ.recycle();
        return bu3Var;
    }

    @Override // defpackage.qt3
    public final it3 zza(x20 x20Var, zzvt zzvtVar, String str, int i) throws RemoteException {
        it3 kt3Var;
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.c(parcelL0, zzvtVar);
        parcelL0.writeString(str);
        parcelL0.writeInt(i);
        Parcel parcelZ = Z(10, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            kt3Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (iInterfaceQueryLocalInterface instanceof it3) {
                kt3Var = (it3) iInterfaceQueryLocalInterface;
            } else {
                kt3Var = new kt3(strongBinder);
            }
        }
        parcelZ.recycle();
        return kt3Var;
    }

    @Override // defpackage.qt3
    public final f80 zza(x20 x20Var, x20 x20Var2, x20 x20Var3) throws RemoteException {
        f80 h80Var;
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, x20Var2);
        rd3.b(parcelL0, x20Var3);
        Parcel parcelZ = Z(11, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        int i = e80.e;
        if (strongBinder == null) {
            h80Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
            if (iInterfaceQueryLocalInterface instanceof f80) {
                h80Var = (f80) iInterfaceQueryLocalInterface;
            } else {
                h80Var = new h80(strongBinder);
            }
        }
        parcelZ.recycle();
        return h80Var;
    }
}
