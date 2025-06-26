package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzavy;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public abstract class mg0 extends sd3 implements ng0 {
    public mg0() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    public static ng0 W6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        return iInterfaceQueryLocalInterface instanceof ng0 ? (ng0) iInterfaceQueryLocalInterface : new pg0(iBinder);
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        sg0 rg0Var = null;
        bo0 do0Var = null;
        q80 s80Var = null;
        switch (i) {
            case 1:
                onAdClicked();
                break;
            case 2:
                onAdClosed();
                break;
            case 3:
                onAdFailedToLoad(parcel.readInt());
                break;
            case 4:
                onAdLeftApplication();
                break;
            case 5:
                onAdOpened();
                break;
            case 6:
                onAdLoaded();
                break;
            case 7:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                    rg0Var = iInterfaceQueryLocalInterface instanceof sg0 ? (sg0) iInterfaceQueryLocalInterface : new rg0(strongBinder);
                }
                z2(rg0Var);
                break;
            case 8:
                onAdImpression();
                break;
            case 9:
                onAppEvent(parcel.readString(), parcel.readString());
                break;
            case 10:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
                    s80Var = iInterfaceQueryLocalInterface2 instanceof q80 ? (q80) iInterfaceQueryLocalInterface2 : new s80(strongBinder2);
                }
                Y(s80Var, parcel.readString());
                break;
            case 11:
                X();
                break;
            case 12:
                d5(parcel.readString());
                break;
            case 13:
                E5();
                break;
            case 14:
                v1((zzavy) rd3.a(parcel, zzavy.CREATOR));
                break;
            case 15:
                onVideoPause();
                break;
            case 16:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                    do0Var = iInterfaceQueryLocalInterface3 instanceof bo0 ? (bo0) iInterfaceQueryLocalInterface3 : new do0(strongBinder3);
                }
                S(do0Var);
                break;
            case 17:
                y0(parcel.readInt());
                break;
            case 18:
                Q4();
                break;
            case 19:
                zzb((Bundle) rd3.a(parcel, Bundle.CREATOR));
                break;
            case 20:
                onVideoPlay();
                break;
            case 21:
                i2(parcel.readString());
                break;
            case 22:
                t2(parcel.readInt(), parcel.readString());
                break;
            case 23:
                U((zzvh) rd3.a(parcel, zzvh.CREATOR));
                break;
            case 24:
                Y3((zzvh) rd3.a(parcel, zzvh.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
