package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzajw;
import com.google.android.gms.internal.ads.zzaqr;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class lg0 extends sd3 implements ig0 {
    public lg0() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        ng0 pg0Var = null;
        ng0 pg0Var2 = null;
        ng0 pg0Var3 = null;
        pc0 rc0Var = null;
        ng0 pg0Var4 = null;
        ng0 pg0Var5 = null;
        ng0 pg0Var6 = null;
        ng0 pg0Var7 = null;
        ng0 pg0Var8 = null;
        switch (i) {
            case 1:
                x20 x20VarG0 = x20.a.g0(parcel.readStrongBinder());
                zzvt zzvtVar = (zzvt) rd3.a(parcel, zzvt.CREATOR);
                zzvq zzvqVar = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                String string = parcel.readString();
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    pg0Var = iInterfaceQueryLocalInterface instanceof ng0 ? (ng0) iInterfaceQueryLocalInterface : new pg0(strongBinder);
                }
                m4(x20VarG0, zzvtVar, zzvqVar, string, pg0Var);
                parcel2.writeNoException();
                return true;
            case 2:
                x20 x20VarH = H();
                parcel2.writeNoException();
                rd3.b(parcel2, x20VarH);
                return true;
            case 3:
                x20 x20VarG02 = x20.a.g0(parcel.readStrongBinder());
                zzvq zzvqVar2 = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                String string2 = parcel.readString();
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    pg0Var8 = iInterfaceQueryLocalInterface2 instanceof ng0 ? (ng0) iInterfaceQueryLocalInterface2 : new pg0(strongBinder2);
                }
                U1(x20VarG02, zzvqVar2, string2, pg0Var8);
                parcel2.writeNoException();
                return true;
            case 4:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 5:
                destroy();
                parcel2.writeNoException();
                return true;
            case 6:
                x20 x20VarG03 = x20.a.g0(parcel.readStrongBinder());
                zzvt zzvtVar2 = (zzvt) rd3.a(parcel, zzvt.CREATOR);
                zzvq zzvqVar3 = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    pg0Var7 = iInterfaceQueryLocalInterface3 instanceof ng0 ? (ng0) iInterfaceQueryLocalInterface3 : new pg0(strongBinder3);
                }
                s3(x20VarG03, zzvtVar2, zzvqVar3, string3, string4, pg0Var7);
                parcel2.writeNoException();
                return true;
            case 7:
                x20 x20VarG04 = x20.a.g0(parcel.readStrongBinder());
                zzvq zzvqVar4 = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    pg0Var6 = iInterfaceQueryLocalInterface4 instanceof ng0 ? (ng0) iInterfaceQueryLocalInterface4 : new pg0(strongBinder4);
                }
                Q5(x20VarG04, zzvqVar4, string5, string6, pg0Var6);
                parcel2.writeNoException();
                return true;
            case 8:
                pause();
                parcel2.writeNoException();
                return true;
            case 9:
                resume();
                parcel2.writeNoException();
                return true;
            case 10:
                i5(x20.a.g0(parcel.readStrongBinder()), (zzvq) rd3.a(parcel, zzvq.CREATOR), parcel.readString(), yn0.W6(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                V5((zzvq) rd3.a(parcel, zzvq.CREATOR), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 12:
                showVideo();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean zIsInitialized = isInitialized();
                parcel2.writeNoException();
                ClassLoader classLoader = rd3.a;
                parcel2.writeInt(zIsInitialized ? 1 : 0);
                return true;
            case 14:
                x20 x20VarG05 = x20.a.g0(parcel.readStrongBinder());
                zzvq zzvqVar5 = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                String string7 = parcel.readString();
                String string8 = parcel.readString();
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    pg0Var5 = iInterfaceQueryLocalInterface5 instanceof ng0 ? (ng0) iInterfaceQueryLocalInterface5 : new pg0(strongBinder5);
                }
                j1(x20VarG05, zzvqVar5, string7, string8, pg0Var5, (zzaei) rd3.a(parcel, zzaei.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 15:
                vg0 vg0VarH6 = h6();
                parcel2.writeNoException();
                rd3.b(parcel2, vg0VarH6);
                return true;
            case 16:
                wg0 wg0VarR5 = r5();
                parcel2.writeNoException();
                rd3.b(parcel2, wg0VarR5);
                return true;
            case 17:
                Bundle bundleZzvh = zzvh();
                parcel2.writeNoException();
                rd3.d(parcel2, bundleZzvh);
                return true;
            case 18:
                Bundle interstitialAdapterInfo = getInterstitialAdapterInfo();
                parcel2.writeNoException();
                rd3.d(parcel2, interstitialAdapterInfo);
                return true;
            case 19:
                Bundle bundleJ5 = j5();
                parcel2.writeNoException();
                rd3.d(parcel2, bundleJ5);
                return true;
            case 20:
                t6((zzvq) rd3.a(parcel, zzvq.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 21:
                R3(x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                boolean zV4 = v4();
                parcel2.writeNoException();
                ClassLoader classLoader2 = rd3.a;
                parcel2.writeInt(zV4 ? 1 : 0);
                return true;
            case 23:
                R6(x20.a.g0(parcel.readStrongBinder()), yn0.W6(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 24:
                q80 q80VarC3 = C3();
                parcel2.writeNoException();
                rd3.b(parcel2, q80VarC3);
                return true;
            case 25:
                ClassLoader classLoader3 = rd3.a;
                setImmersiveMode(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            case 26:
                su3 videoController = getVideoController();
                parcel2.writeNoException();
                rd3.b(parcel2, videoController);
                return true;
            case 27:
                bh0 bh0VarG2 = G2();
                parcel2.writeNoException();
                rd3.b(parcel2, bh0VarG2);
                return true;
            case 28:
                x20 x20VarG06 = x20.a.g0(parcel.readStrongBinder());
                zzvq zzvqVar6 = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                String string9 = parcel.readString();
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    pg0Var4 = iInterfaceQueryLocalInterface6 instanceof ng0 ? (ng0) iInterfaceQueryLocalInterface6 : new pg0(strongBinder6);
                }
                a6(x20VarG06, zzvqVar6, string9, pg0Var4);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                d6(x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 31:
                x20 x20VarG07 = x20.a.g0(parcel.readStrongBinder());
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
                    rc0Var = iInterfaceQueryLocalInterface7 instanceof pc0 ? (pc0) iInterfaceQueryLocalInterface7 : new rc0(strongBinder7);
                }
                r1(x20VarG07, rc0Var, parcel.createTypedArrayList(zzajw.CREATOR));
                parcel2.writeNoException();
                return true;
            case 32:
                x20 x20VarG08 = x20.a.g0(parcel.readStrongBinder());
                zzvq zzvqVar7 = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                String string10 = parcel.readString();
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    pg0Var3 = iInterfaceQueryLocalInterface8 instanceof ng0 ? (ng0) iInterfaceQueryLocalInterface8 : new pg0(strongBinder8);
                }
                O6(x20VarG08, zzvqVar7, string10, pg0Var3);
                parcel2.writeNoException();
                return true;
            case 33:
                zzaqr zzaqrVarO = O();
                parcel2.writeNoException();
                rd3.d(parcel2, zzaqrVarO);
                return true;
            case 34:
                zzaqr zzaqrVarM = M();
                parcel2.writeNoException();
                rd3.d(parcel2, zzaqrVarM);
                return true;
            case 35:
                x20 x20VarG09 = x20.a.g0(parcel.readStrongBinder());
                zzvt zzvtVar3 = (zzvt) rd3.a(parcel, zzvt.CREATOR);
                zzvq zzvqVar8 = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                String string11 = parcel.readString();
                String string12 = parcel.readString();
                IBinder strongBinder9 = parcel.readStrongBinder();
                if (strongBinder9 != null) {
                    IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    pg0Var2 = iInterfaceQueryLocalInterface9 instanceof ng0 ? (ng0) iInterfaceQueryLocalInterface9 : new pg0(strongBinder9);
                }
                w2(x20VarG09, zzvtVar3, zzvqVar8, string11, string12, pg0Var2);
                parcel2.writeNoException();
                return true;
            case 36:
                og0 og0VarF6 = F6();
                parcel2.writeNoException();
                rd3.b(parcel2, og0VarF6);
                return true;
            case 37:
                u5(x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
