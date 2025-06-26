package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzajw;
import com.google.android.gms.internal.ads.zzaqr;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import java.util.List;

/* loaded from: classes.dex */
public final class kg0 extends qd3 implements ig0 {
    public kg0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // defpackage.ig0
    public final og0 F6() throws RemoteException {
        og0 qg0Var;
        Parcel parcelZ = Z(36, l0());
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            qg0Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
            qg0Var = iInterfaceQueryLocalInterface instanceof og0 ? (og0) iInterfaceQueryLocalInterface : new qg0(strongBinder);
        }
        parcelZ.recycle();
        return qg0Var;
    }

    @Override // defpackage.ig0
    public final bh0 G2() throws RemoteException {
        bh0 dh0Var;
        Parcel parcelZ = Z(27, l0());
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            dh0Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            dh0Var = iInterfaceQueryLocalInterface instanceof bh0 ? (bh0) iInterfaceQueryLocalInterface : new dh0(strongBinder);
        }
        parcelZ.recycle();
        return dh0Var;
    }

    @Override // defpackage.ig0
    public final x20 H() throws RemoteException {
        return jo.L(Z(2, l0()));
    }

    @Override // defpackage.ig0
    public final zzaqr M() throws RemoteException {
        Parcel parcelZ = Z(34, l0());
        zzaqr zzaqrVar = (zzaqr) rd3.a(parcelZ, zzaqr.CREATOR);
        parcelZ.recycle();
        return zzaqrVar;
    }

    @Override // defpackage.ig0
    public final zzaqr O() throws RemoteException {
        Parcel parcelZ = Z(33, l0());
        zzaqr zzaqrVar = (zzaqr) rd3.a(parcelZ, zzaqr.CREATOR);
        parcelZ.recycle();
        return zzaqrVar;
    }

    @Override // defpackage.ig0
    public final void O6(x20 x20Var, zzvq zzvqVar, String str, ng0 ng0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.c(parcelL0, zzvqVar);
        parcelL0.writeString(str);
        rd3.b(parcelL0, ng0Var);
        g0(32, parcelL0);
    }

    @Override // defpackage.ig0
    public final void Q5(x20 x20Var, zzvq zzvqVar, String str, String str2, ng0 ng0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.c(parcelL0, zzvqVar);
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        rd3.b(parcelL0, ng0Var);
        g0(7, parcelL0);
    }

    @Override // defpackage.ig0
    public final void R3(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(21, parcelL0);
    }

    @Override // defpackage.ig0
    public final void R6(x20 x20Var, vn0 vn0Var, List<String> list) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, vn0Var);
        parcelL0.writeStringList(list);
        g0(23, parcelL0);
    }

    @Override // defpackage.ig0
    public final void V5(zzvq zzvqVar, String str) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvqVar);
        parcelL0.writeString(str);
        g0(11, parcelL0);
    }

    @Override // defpackage.ig0
    public final void a6(x20 x20Var, zzvq zzvqVar, String str, ng0 ng0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.c(parcelL0, zzvqVar);
        parcelL0.writeString(str);
        rd3.b(parcelL0, ng0Var);
        g0(28, parcelL0);
    }

    @Override // defpackage.ig0
    public final void d6(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(30, parcelL0);
    }

    @Override // defpackage.ig0
    public final void destroy() throws RemoteException {
        g0(5, l0());
    }

    @Override // defpackage.ig0
    public final su3 getVideoController() throws RemoteException {
        Parcel parcelZ = Z(26, l0());
        su3 su3VarW6 = vu3.W6(parcelZ.readStrongBinder());
        parcelZ.recycle();
        return su3VarW6;
    }

    @Override // defpackage.ig0
    public final vg0 h6() throws RemoteException {
        vg0 xg0Var;
        Parcel parcelZ = Z(15, l0());
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            xg0Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            xg0Var = iInterfaceQueryLocalInterface instanceof vg0 ? (vg0) iInterfaceQueryLocalInterface : new xg0(strongBinder);
        }
        parcelZ.recycle();
        return xg0Var;
    }

    @Override // defpackage.ig0
    public final void i5(x20 x20Var, zzvq zzvqVar, String str, vn0 vn0Var, String str2) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.c(parcelL0, zzvqVar);
        parcelL0.writeString(null);
        rd3.b(parcelL0, vn0Var);
        parcelL0.writeString(str2);
        g0(10, parcelL0);
    }

    @Override // defpackage.ig0
    public final boolean isInitialized() throws RemoteException {
        Parcel parcelZ = Z(13, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.ig0
    public final void j1(x20 x20Var, zzvq zzvqVar, String str, String str2, ng0 ng0Var, zzaei zzaeiVar, List<String> list) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.c(parcelL0, zzvqVar);
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        rd3.b(parcelL0, ng0Var);
        rd3.c(parcelL0, zzaeiVar);
        parcelL0.writeStringList(list);
        g0(14, parcelL0);
    }

    @Override // defpackage.ig0
    public final void pause() throws RemoteException {
        g0(8, l0());
    }

    @Override // defpackage.ig0
    public final void r1(x20 x20Var, pc0 pc0Var, List<zzajw> list) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, pc0Var);
        parcelL0.writeTypedList(list);
        g0(31, parcelL0);
    }

    @Override // defpackage.ig0
    public final wg0 r5() throws RemoteException {
        wg0 yg0Var;
        Parcel parcelZ = Z(16, l0());
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            yg0Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            yg0Var = iInterfaceQueryLocalInterface instanceof wg0 ? (wg0) iInterfaceQueryLocalInterface : new yg0(strongBinder);
        }
        parcelZ.recycle();
        return yg0Var;
    }

    @Override // defpackage.ig0
    public final void resume() throws RemoteException {
        g0(9, l0());
    }

    @Override // defpackage.ig0
    public final void s3(x20 x20Var, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, ng0 ng0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.c(parcelL0, zzvtVar);
        rd3.c(parcelL0, zzvqVar);
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        rd3.b(parcelL0, ng0Var);
        g0(6, parcelL0);
    }

    @Override // defpackage.ig0
    public final void setImmersiveMode(boolean z) throws RemoteException {
        Parcel parcelL0 = l0();
        ClassLoader classLoader = rd3.a;
        parcelL0.writeInt(z ? 1 : 0);
        g0(25, parcelL0);
    }

    @Override // defpackage.ig0
    public final void showInterstitial() throws RemoteException {
        g0(4, l0());
    }

    @Override // defpackage.ig0
    public final void showVideo() throws RemoteException {
        g0(12, l0());
    }

    @Override // defpackage.ig0
    public final void u5(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(37, parcelL0);
    }

    @Override // defpackage.ig0
    public final boolean v4() throws RemoteException {
        Parcel parcelZ = Z(22, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.ig0
    public final void w2(x20 x20Var, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, ng0 ng0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.c(parcelL0, zzvtVar);
        rd3.c(parcelL0, zzvqVar);
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        rd3.b(parcelL0, ng0Var);
        g0(35, parcelL0);
    }
}
