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
import com.google.android.gms.internal.ads.zzzj;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class ht3 extends sd3 implements it3 {
    public ht3() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static it3 zzc(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        return iInterfaceQueryLocalInterface instanceof it3 ? (it3) iInterfaceQueryLocalInterface : new kt3(iBinder);
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        us3 ws3Var = null;
        yt3 au3Var = null;
        vs3 xs3Var = null;
        mu3 ou3Var = null;
        yn3 ao3Var = null;
        lt3 nt3Var = null;
        pn0 rn0Var = null;
        wt3 vt3Var = null;
        ps3 rs3Var = null;
        t50 v50Var = null;
        jl0 ll0Var = null;
        gl0 il0Var = null;
        pt3 st3Var = null;
        switch (i) {
            case 1:
                x20 x20VarZzki = zzki();
                parcel2.writeNoException();
                rd3.b(parcel2, x20VarZzki);
                return true;
            case 2:
                destroy();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zIsReady = isReady();
                parcel2.writeNoException();
                ClassLoader classLoader = rd3.a;
                parcel2.writeInt(zIsReady ? 1 : 0);
                return true;
            case 4:
                boolean zZza = zza((zzvq) rd3.a(parcel, zzvq.CREATOR));
                parcel2.writeNoException();
                parcel2.writeInt(zZza ? 1 : 0);
                return true;
            case 5:
                pause();
                parcel2.writeNoException();
                return true;
            case 6:
                resume();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    ws3Var = iInterfaceQueryLocalInterface instanceof us3 ? (us3) iInterfaceQueryLocalInterface : new ws3(strongBinder);
                }
                zza(ws3Var);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    st3Var = iInterfaceQueryLocalInterface2 instanceof pt3 ? (pt3) iInterfaceQueryLocalInterface2 : new st3(strongBinder2);
                }
                zza(st3Var);
                parcel2.writeNoException();
                return true;
            case 9:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 10:
                stopLoading();
                parcel2.writeNoException();
                return true;
            case 11:
                zzkj();
                parcel2.writeNoException();
                return true;
            case 12:
                zzvt zzvtVarZzkk = zzkk();
                parcel2.writeNoException();
                rd3.d(parcel2, zzvtVarZzkk);
                return true;
            case 13:
                zza((zzvt) rd3.a(parcel, zzvt.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
                    il0Var = iInterfaceQueryLocalInterface3 instanceof gl0 ? (gl0) iInterfaceQueryLocalInterface3 : new il0(strongBinder3);
                }
                zza(il0Var);
                parcel2.writeNoException();
                return true;
            case 15:
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
                    ll0Var = iInterfaceQueryLocalInterface4 instanceof jl0 ? (jl0) iInterfaceQueryLocalInterface4 : new ll0(strongBinder4);
                }
                zza(ll0Var, parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 19:
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
                    v50Var = iInterfaceQueryLocalInterface5 instanceof t50 ? (t50) iInterfaceQueryLocalInterface5 : new v50(strongBinder5);
                }
                zza(v50Var);
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    rs3Var = iInterfaceQueryLocalInterface6 instanceof ps3 ? (ps3) iInterfaceQueryLocalInterface6 : new rs3(strongBinder6);
                }
                zza(rs3Var);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    vt3Var = iInterfaceQueryLocalInterface7 instanceof wt3 ? (wt3) iInterfaceQueryLocalInterface7 : new vt3(strongBinder7);
                }
                zza(vt3Var);
                parcel2.writeNoException();
                return true;
            case 22:
                ClassLoader classLoader2 = rd3.a;
                setManualImpressionsEnabled(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            case 23:
                boolean zIsLoading = isLoading();
                parcel2.writeNoException();
                ClassLoader classLoader3 = rd3.a;
                parcel2.writeInt(zIsLoading ? 1 : 0);
                return true;
            case 24:
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    rn0Var = iInterfaceQueryLocalInterface8 instanceof pn0 ? (pn0) iInterfaceQueryLocalInterface8 : new rn0(strongBinder8);
                }
                zza(rn0Var);
                parcel2.writeNoException();
                return true;
            case 25:
                setUserId(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 26:
                su3 videoController = getVideoController();
                parcel2.writeNoException();
                rd3.b(parcel2, videoController);
                return true;
            case 29:
                zza((zzaaz) rd3.a(parcel, zzaaz.CREATOR));
                parcel2.writeNoException();
                return true;
            case 30:
                zza((zzzj) rd3.a(parcel, zzzj.CREATOR));
                parcel2.writeNoException();
                return true;
            case 31:
                String adUnitId = getAdUnitId();
                parcel2.writeNoException();
                parcel2.writeString(adUnitId);
                return true;
            case 32:
                pt3 pt3VarZzkn = zzkn();
                parcel2.writeNoException();
                rd3.b(parcel2, pt3VarZzkn);
                return true;
            case 33:
                us3 us3VarZzko = zzko();
                parcel2.writeNoException();
                rd3.b(parcel2, us3VarZzko);
                return true;
            case 34:
                ClassLoader classLoader4 = rd3.a;
                setImmersiveMode(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            case 35:
                String strZzkl = zzkl();
                parcel2.writeNoException();
                parcel2.writeString(strZzkl);
                return true;
            case 36:
                IBinder strongBinder9 = parcel.readStrongBinder();
                if (strongBinder9 != null) {
                    IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    nt3Var = iInterfaceQueryLocalInterface9 instanceof lt3 ? (lt3) iInterfaceQueryLocalInterface9 : new nt3(strongBinder9);
                }
                zza(nt3Var);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle adMetadata = getAdMetadata();
                parcel2.writeNoException();
                rd3.d(parcel2, adMetadata);
                return true;
            case 38:
                zzbl(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 39:
                zza((zzwc) rd3.a(parcel, zzwc.CREATOR));
                parcel2.writeNoException();
                return true;
            case 40:
                IBinder strongBinder10 = parcel.readStrongBinder();
                if (strongBinder10 != null) {
                    IInterface iInterfaceQueryLocalInterface10 = strongBinder10.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
                    ao3Var = iInterfaceQueryLocalInterface10 instanceof yn3 ? (yn3) iInterfaceQueryLocalInterface10 : new ao3(strongBinder10);
                }
                zza(ao3Var);
                parcel2.writeNoException();
                return true;
            case 41:
                ru3 ru3VarZzkm = zzkm();
                parcel2.writeNoException();
                rd3.b(parcel2, ru3VarZzkm);
                return true;
            case 42:
                IBinder strongBinder11 = parcel.readStrongBinder();
                if (strongBinder11 != null) {
                    IInterface iInterfaceQueryLocalInterface11 = strongBinder11.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    ou3Var = iInterfaceQueryLocalInterface11 instanceof mu3 ? (mu3) iInterfaceQueryLocalInterface11 : new ou3(strongBinder11);
                }
                zza(ou3Var);
                parcel2.writeNoException();
                return true;
            case 43:
                zzvq zzvqVar = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                IBinder strongBinder12 = parcel.readStrongBinder();
                if (strongBinder12 != null) {
                    IInterface iInterfaceQueryLocalInterface12 = strongBinder12.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoadCallback");
                    xs3Var = iInterfaceQueryLocalInterface12 instanceof vs3 ? (vs3) iInterfaceQueryLocalInterface12 : new xs3(strongBinder12);
                }
                zza(zzvqVar, xs3Var);
                parcel2.writeNoException();
                return true;
            case 44:
                zze(x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 45:
                IBinder strongBinder13 = parcel.readStrongBinder();
                if (strongBinder13 != null) {
                    IInterface iInterfaceQueryLocalInterface13 = strongBinder13.queryLocalInterface("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
                    au3Var = iInterfaceQueryLocalInterface13 instanceof yt3 ? (yt3) iInterfaceQueryLocalInterface13 : new au3(strongBinder13);
                }
                zza(au3Var);
                parcel2.writeNoException();
                return true;
        }
    }
}
