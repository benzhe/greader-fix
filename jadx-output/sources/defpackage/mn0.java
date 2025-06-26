package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzavt;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class mn0 extends sd3 implements jn0 {
    public static final /* synthetic */ int e = 0;

    public mn0() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            U6((zzavt) rd3.a(parcel, zzavt.CREATOR));
            parcel2.writeNoException();
        } else if (i != 2) {
            pn0 rn0Var = null;
            hn0 kn0Var = null;
            lt3 nt3Var = null;
            if (i != 3) {
                if (i != 34) {
                    switch (i) {
                        case 5:
                            boolean zIsLoaded = isLoaded();
                            parcel2.writeNoException();
                            ClassLoader classLoader = rd3.a;
                            parcel2.writeInt(zIsLoaded ? 1 : 0);
                            break;
                        case 6:
                            pause();
                            parcel2.writeNoException();
                            break;
                        case 7:
                            resume();
                            parcel2.writeNoException();
                            break;
                        case 8:
                            destroy();
                            parcel2.writeNoException();
                            break;
                        case 9:
                            Y4(x20.a.g0(parcel.readStrongBinder()));
                            parcel2.writeNoException();
                            break;
                        case 10:
                            k4(x20.a.g0(parcel.readStrongBinder()));
                            parcel2.writeNoException();
                            break;
                        case 11:
                            A6(x20.a.g0(parcel.readStrongBinder()));
                            parcel2.writeNoException();
                            break;
                        case 12:
                            String mediationAdapterClassName = getMediationAdapterClassName();
                            parcel2.writeNoException();
                            parcel2.writeString(mediationAdapterClassName);
                            break;
                        case 13:
                            setUserId(parcel.readString());
                            parcel2.writeNoException();
                            break;
                        case 14:
                            IBinder strongBinder = parcel.readStrongBinder();
                            if (strongBinder != null) {
                                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                                nt3Var = iInterfaceQueryLocalInterface instanceof lt3 ? (lt3) iInterfaceQueryLocalInterface : new nt3(strongBinder);
                            }
                            zza(nt3Var);
                            parcel2.writeNoException();
                            break;
                        case 15:
                            Bundle adMetadata = getAdMetadata();
                            parcel2.writeNoException();
                            rd3.d(parcel2, adMetadata);
                            break;
                        case 16:
                            IBinder strongBinder2 = parcel.readStrongBinder();
                            if (strongBinder2 != null) {
                                IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                                kn0Var = iInterfaceQueryLocalInterface2 instanceof hn0 ? (hn0) iInterfaceQueryLocalInterface2 : new kn0(strongBinder2);
                            }
                            W4(kn0Var);
                            parcel2.writeNoException();
                            break;
                        case 17:
                            a5(parcel.readString());
                            parcel2.writeNoException();
                            break;
                        case 18:
                            I4(x20.a.g0(parcel.readStrongBinder()));
                            parcel2.writeNoException();
                            break;
                        case 19:
                            setCustomData(parcel.readString());
                            parcel2.writeNoException();
                            break;
                        case 20:
                            boolean zG1 = g1();
                            parcel2.writeNoException();
                            ClassLoader classLoader2 = rd3.a;
                            parcel2.writeInt(zG1 ? 1 : 0);
                            break;
                        case 21:
                            ru3 ru3VarZzkm = zzkm();
                            parcel2.writeNoException();
                            rd3.b(parcel2, ru3VarZzkm);
                            break;
                        default:
                            return false;
                    }
                } else {
                    ClassLoader classLoader3 = rd3.a;
                    setImmersiveMode(parcel.readInt() != 0);
                    parcel2.writeNoException();
                }
            } else {
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    rn0Var = iInterfaceQueryLocalInterface3 instanceof pn0 ? (pn0) iInterfaceQueryLocalInterface3 : new rn0(strongBinder3);
                }
                zza(rn0Var);
                parcel2.writeNoException();
            }
        } else {
            show();
            parcel2.writeNoException();
        }
        return true;
    }
}
