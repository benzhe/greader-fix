package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaww;
import com.google.android.gms.internal.ads.zzvq;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class eo0 extends sd3 implements fo0 {
    public static final /* synthetic */ int e = 0;

    public eo0() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        no0 po0Var = null;
        no0 po0Var2 = null;
        lu3 nu3Var = null;
        oo0 ro0Var = null;
        go0 io0Var = null;
        switch (i) {
            case 1:
                zzvq zzvqVar = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    po0Var = iInterfaceQueryLocalInterface instanceof no0 ? (no0) iInterfaceQueryLocalInterface : new po0(strongBinder);
                }
                T4(zzvqVar, po0Var);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    io0Var = iInterfaceQueryLocalInterface2 instanceof go0 ? (go0) iInterfaceQueryLocalInterface2 : new io0(strongBinder2);
                }
                J5(io0Var);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zIsLoaded = isLoaded();
                parcel2.writeNoException();
                ClassLoader classLoader = rd3.a;
                parcel2.writeInt(zIsLoaded ? 1 : 0);
                return true;
            case 4:
                String mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 5:
                zze(x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    ro0Var = iInterfaceQueryLocalInterface3 instanceof oo0 ? (oo0) iInterfaceQueryLocalInterface3 : new ro0(strongBinder3);
                }
                t5(ro0Var);
                parcel2.writeNoException();
                return true;
            case 7:
                E6((zzaww) rd3.a(parcel, zzaww.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
                    nu3Var = iInterfaceQueryLocalInterface4 instanceof lu3 ? (lu3) iInterfaceQueryLocalInterface4 : new nu3(strongBinder4);
                }
                r4(nu3Var);
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle adMetadata = getAdMetadata();
                parcel2.writeNoException();
                rd3.d(parcel2, adMetadata);
                return true;
            case 10:
                x20 x20VarG0 = x20.a.g0(parcel.readStrongBinder());
                ClassLoader classLoader2 = rd3.a;
                S6(x20VarG0, parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            case 11:
                bo0 bo0VarC2 = c2();
                parcel2.writeNoException();
                rd3.b(parcel2, bo0VarC2);
                return true;
            case 12:
                ru3 ru3VarZzkm = zzkm();
                parcel2.writeNoException();
                rd3.b(parcel2, ru3VarZzkm);
                return true;
            case 13:
                zza(qu3.W6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 14:
                zzvq zzvqVar2 = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    po0Var2 = iInterfaceQueryLocalInterface5 instanceof no0 ? (no0) iInterfaceQueryLocalInterface5 : new po0(strongBinder5);
                }
                I5(zzvqVar2, po0Var2);
                parcel2.writeNoException();
                return true;
            case 15:
                ClassLoader classLoader3 = rd3.a;
                setImmersiveMode(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
